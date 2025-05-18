import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class GitHubApi {
  static final GitHubApi _instance = GitHubApi._internal();
  factory GitHubApi() => _instance;
  
  late Dio _dio;

  GitHubApi._internal() {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.github.com',
        headers: {
          'Accept': 'application/vnd.github.v3+json',
        },
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      ),
    );

    // Add interceptors for logging, auth token, etc.
    _dio.interceptors.add(LogInterceptor(
      requestBody: kDebugMode,
      responseBody: kDebugMode,
      error: kDebugMode,
    ));

    // Add retry interceptor
    _dio.interceptors.add(
      InterceptorsWrapper(
        onError: (error, handler) async {
          if (error.response?.statusCode == 403) {
            // Handle rate limiting
            if (error.response?.headers['x-ratelimit-remaining'] == '0') {
              debugPrint('GitHub API rate limit exceeded. Retrying...');
              await Future.delayed(const Duration(seconds: 1));
              return handler.resolve(await _retry(error.requestOptions));
            }
          }
          return handler.next(error);
        },
      ),
    );
  }

  // Add GitHub access token if available
  void setAuthToken(String token) {
    _dio.options.headers['Authorization'] = 'token $token';
  }

  // Retry mechanism for failed requests
  Future<Response<dynamic>> _retry(RequestOptions requestOptions) {
    final options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );
    return _dio.request<dynamic>(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }

  // API methods
  Future<Response> getUser(String username) {
    return _dio.get('/users/$username');
  }

  Future<Response> getUserRepositories(String username, {int page = 1, int perPage = 10}) {
    return _dio.get(
      '/users/$username/repos',
      queryParameters: {'page': page, 'per_page': perPage, 'sort': 'updated'},
    );
  }

  Future<Response> getRepository(String username, String repoName) {
    return _dio.get('/repos/$username/$repoName');
  }

  Future<Response> getReadme(String username, String repoName) {
    return _dio.get(
      '/repos/$username/$repoName/readme',
      // Request raw content instead of HTML
      options: Options(headers: {'Accept': 'application/vnd.github.raw'}),
    );
  }
}
