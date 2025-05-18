import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:github_mini/app/data/api/github_api.dart';
import 'package:github_mini/app/data/models/github_repository.dart';
import 'package:github_mini/app/routes/app_pages.dart';
import 'package:github_mini/app/utils/constants.dart';

class RepositoriesController extends GetxController {
  final GitHubApi _api = GitHubApi();
  
  final RxList<GitHubRepository> repositories = <GitHubRepository>[].obs;
  final RxBool isLoading = false.obs;
  final RxBool isLoadingMore = false.obs;
  final RxBool hasError = false.obs;
  final RxString errorMessage = ''.obs;
  
  final RxString username = ''.obs;
  final RxInt currentPage = 1.obs;
  final RxInt totalPages = 1.obs;
  final RxInt totalRepos = 0.obs;
  final RxBool hasMorePages = true.obs;
  
  @override
  void onInit() {
    super.onInit();
    username.value = Get.arguments as String;
    fetchRepositories(refresh: true);
  }
  
  Future<void> fetchRepositories({bool refresh = false, int? page}) async {
    // If a specific page is requested, use that instead
    if (page != null) {
      currentPage.value = page;
      isLoading.value = true;
      repositories.clear();
    } else if (refresh) {
      isLoading.value = true;
      currentPage.value = 1;
      repositories.clear();
      hasMorePages.value = true;
    } else {
      if (isLoadingMore.value || !hasMorePages.value) return;
      isLoadingMore.value = true;
    }
    
    hasError.value = false;
    errorMessage.value = '';
    
    try {
      final response = await _api.getUserRepositories(
        username.value,
        page: currentPage.value,
        perPage: AppConstants.reposPerPage,
      );
      
      final List<dynamic> repoList = response.data;
      final repoObjects = repoList.map((repo) => 
          GitHubRepository.fromJson(repo)).toList();
      
      repositories.addAll(repoObjects);
      
      // Get the total pages and total repos from the Link header if available
      if (response.headers.map.containsKey('link')) {
        final linkHeader = response.headers.value('link') ?? '';
        final lastPageRegex = RegExp(r'page=([0-9]+)>; rel="last"');
        final match = lastPageRegex.firstMatch(linkHeader);
        if (match != null && match.groupCount >= 1) {
          totalPages.value = int.parse(match.group(1)!);
          // Estimate total repos based on per_page and total pages
          totalRepos.value = (totalPages.value - 1) * AppConstants.reposPerPage + 
              (currentPage.value == totalPages.value ? repositories.length : AppConstants.reposPerPage);
        } else {
          // If last page link is not found, check if we have enough items for another page
          totalPages.value = repoObjects.length < AppConstants.reposPerPage ? 
              currentPage.value : currentPage.value + 1;
          totalRepos.value = (currentPage.value - 1) * AppConstants.reposPerPage + repositories.length;
        }
      } else {
        // If no link header, check if we have enough items for current page
        hasMorePages.value = repoObjects.length >= AppConstants.reposPerPage;
        totalPages.value = hasMorePages.value ? 
            (totalPages.value > currentPage.value ? totalPages.value : currentPage.value + 1) : 
            currentPage.value;
        totalRepos.value = (currentPage.value - 1) * AppConstants.reposPerPage + repositories.length;
      }
      
      // Try to get the exact total count from GitHub API user endpoint
      try {
        final userResponse = await _api.getUser(username.value);
        if (userResponse.data.containsKey('public_repos')) {
          totalRepos.value = userResponse.data['public_repos'];
        }
      } catch (e) {
        // If we can't get the exact count, we'll use our estimation from above
      }
      
    } on DioException catch (e) {
      hasError.value = true;
      if (e.response?.statusCode == 404) {
        errorMessage.value = ErrorMessages.userNotFound;
      } else if (e.response?.statusCode == 403) {
        errorMessage.value = ErrorMessages.rateLimitExceeded;
      } else if (e.type == DioExceptionType.connectionTimeout || 
                 e.type == DioExceptionType.receiveTimeout) {
        errorMessage.value = ErrorMessages.networkError;
      } else {
        errorMessage.value = ErrorMessages.genericError;
      }
    } catch (e) {
      hasError.value = true;
      errorMessage.value = e.toString();
    } finally {
      isLoading.value = false;
      isLoadingMore.value = false;
    }
  }
  
  void navigateToRepositoryDetail(GitHubRepository repository) {
    Get.toNamed(Routes.REPOSITORY_DETAIL, arguments: {
      'repository': repository,
      'username': username.value,
    });
  }


  
  void retryFetchRepositories() {
    fetchRepositories(refresh: true);
  }
  
  // Pagination navigation methods
  void goToNextPage() {
    if (currentPage.value < totalPages.value) {
      fetchRepositories(page: currentPage.value + 1);
    }
  }
  
  void goToPreviousPage() {
    if (currentPage.value > 1) {
      fetchRepositories(page: currentPage.value - 1);
    }
  }
  
  void goToFirstPage() {
    if (currentPage.value != 1) {
      fetchRepositories(page: 1);
    }
  }
  
  void goToLastPage() {
    if (currentPage.value != totalPages.value) {
      fetchRepositories(page: totalPages.value);
    }
  }
}
