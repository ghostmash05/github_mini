class AppConstants {
  // API
  static const String apiBaseUrl = 'https://api.github.com';
  
  // Storage and Caching
  static const String userCacheKey = 'github_user_cache';
  static const String repoCacheKey = 'github_repos_cache';
  static const String tokenKey = 'github_oauth_token';
  
  // Duration constants
  static const Duration cacheDuration = Duration(hours: 2);
  
  // Pagination
  static const int reposPerPage = 10;
  
  // UI
  static const double defaultPadding = 16.0;
  static const double cardBorderRadius = 12.0;
}

// Error messages
class ErrorMessages {
  static const String userNotFound = 'User not found. Please check the username.';
  static const String networkError = 'Network error. Please check your connection and try again.';
  static const String rateLimitExceeded = 'GitHub API rate limit exceeded. Please try again later or add an authentication token.';
  static const String genericError = 'Something went wrong. Please try again.';
}

// Routes
class AppRoutes {
  static const String profile = '/profile';
  static const String repositories = '/repositories';
  static const String repositoryDetail = '/repository';
}
