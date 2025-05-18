import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:github_mini/app/data/api/github_api.dart';
import 'package:github_mini/app/data/models/github_user.dart';
import 'package:github_mini/app/routes/app_pages.dart';
import 'package:github_mini/app/utils/constants.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ProfileController extends GetxController {
  final GitHubApi _api = GitHubApi();
  
  final Rx<GitHubUser> user = GitHubUser.empty().obs;
  final RxBool isLoading = false.obs;
  final RxBool hasError = false.obs;
  final RxString errorMessage = ''.obs;
  
  // For search functionality
  final RxString username = 'octocat'.obs; // Default GitHub user
  
  @override
  void onInit() {
    super.onInit();
    // Get username from arguments if available
    if (Get.arguments != null && Get.arguments is String) {
      username.value = Get.arguments as String;
    }
    fetchUserProfile(username.value);
  }
  
  Future<void> fetchUserProfile(String username) async {
    if (username.isEmpty) return;
    
    isLoading.value = true;
    hasError.value = false;
    errorMessage.value = '';
    
    try {
      // Check for cached data first
      final box = await Hive.openBox('github_cache');
      final cacheKey = '${AppConstants.userCacheKey}_$username';
      final cachedData = box.get(cacheKey);
      
      if (cachedData != null) {
        final cachedTime = box.get('${cacheKey}_time') as DateTime?;
        final isCacheValid = cachedTime != null && 
            DateTime.now().difference(cachedTime) < AppConstants.cacheDuration;
        
        if (isCacheValid) {
          user.value = GitHubUser.fromJson(Map<String, dynamic>.from(cachedData));
          isLoading.value = false;
          return;
        }
      }
      
      // If no valid cache, fetch from API
      this.username.value = username;
      final response = await _api.getUser(username);
      final userData = response.data;
      
      user.value = GitHubUser.fromJson(userData);
      
      // Cache the data
      box.put(cacheKey, userData);
      box.put('${cacheKey}_time', DateTime.now());
      
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
    }
  }
  
  void navigateToRepositories() {
    if (username.value.isNotEmpty) {
      Get.toNamed(Routes.REPOSITORIES, arguments: username.value);
    }
  }
  
  void retryFetchUser() {
    fetchUserProfile(username.value);
  }
}
