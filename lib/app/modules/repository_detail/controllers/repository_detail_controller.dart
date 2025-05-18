import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:github_mini/app/data/api/github_api.dart';
import 'package:github_mini/app/data/models/github_repository.dart';
import 'package:github_mini/app/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class RepositoryDetailController extends GetxController {
  final GitHubApi _api = GitHubApi();
  
  final Rx<GitHubRepository> repository = GitHubRepository.empty().obs;
  final RxString readmeContent = ''.obs;
  final RxBool isLoading = false.obs;
  final RxBool isReadmeLoading = false.obs;
  final RxBool hasError = false.obs;
  final RxString errorMessage = ''.obs;
  
  final RxString username = ''.obs;
  
  // Base URL for raw content from the current repository
  String get rawContentBaseUrl => 'https://raw.githubusercontent.com/${username.value}/${repository.value.name}/master';
  
  @override
  void onInit() {
    super.onInit();
    final args = Get.arguments as Map<String, dynamic>;
    username.value = args['username'] as String;
    repository.value = args['repository'] as GitHubRepository;
    
    // Load full repository data if we need more details
    if (repository.value.htmlUrl?.isNotEmpty == true) {
      fetchReadme();
    }
  }
  
  Future<void> fetchRepositoryDetails() async {
    if (repository.value.name?.isEmpty ?? true) return;
    
    isLoading.value = true;
    hasError.value = false;
    errorMessage.value = '';
    
    try {
      final response = await _api.getRepository(
        username.value,
        repository.value.name!,
      );
      
      repository.value = GitHubRepository.fromJson(response.data);
      
    } on DioException catch (e) {
      hasError.value = true;
      if (e.response?.statusCode == 404) {
        errorMessage.value = 'Repository not found.';
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
    }
  }
  
  Future<void> fetchReadme() async {
    if (repository.value.name?.isEmpty ?? true) return;
    
    isReadmeLoading.value = true;
    
    try {
      final response = await _api.getReadme(
        username.value,
        repository.value.name!,
      );
      
      // With raw content media type, the response is directly the Markdown content
      if (response.data is String) {
        readmeContent.value = response.data;
      } else {
        // Handle unexpected response format
        readmeContent.value = response.data.toString();
      }
    } catch (e) {
      // Just ignore readme errors, not critical
      readmeContent.value = 'No README available for this repository.';
    } finally {
      isReadmeLoading.value = false;
    }
  }
  
  Future<void> launchRepositoryUrl() async {
    if (repository.value.htmlUrl?.isNotEmpty == true) {
      final url = Uri.parse(repository.value.htmlUrl!);
      try {
        // Use the most straightforward method for launching URLs
        // This will delegate to the system to choose the appropriate app
        final launched = await launchUrl(
          url,
          mode: LaunchMode.externalApplication,
          webViewConfiguration: const WebViewConfiguration(
            enableJavaScript: true,
            enableDomStorage: true,
          ),
        );
        
        if (!launched) {
          print('Could not launch URL: ${url.toString()}');
        }
      } catch (e) {
        print('Error launching URL: $e');
      }
    }
  }
}
