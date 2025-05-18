import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:github_mini/app/modules/repository_detail/controllers/repository_detail_controller.dart';
import 'package:github_mini/app/utils/constants.dart';
import 'package:github_mini/app/utils/theme.dart';
import 'package:github_mini/app/widgets/shimmer_loading.dart';

// Animation classes have been moved to lib/app/widgets/animations.dart

class RepositoryDetailView extends GetView<RepositoryDetailController> {
  const RepositoryDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppTheme.backgroundGradient,
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Custom header with back button and repository name
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back, color: AppTheme.textColor),
                      onPressed: () => Get.back(),
                    ),
                    Expanded(
                      child: Center(
                        child: Obx(() => Text(
                          controller.repository.value.name ?? 'Repository',
                          style: AppTheme.titleStyle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        )),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.open_in_browser, color: AppTheme.textColor),
                      onPressed: controller.launchRepositoryUrl,
                    ),
                  ],
                ),
              ),
              // Main content
              Expanded(
                child: GetX<RepositoryDetailController>(
                  builder: (controller) {
                    if (controller.isLoading.value) {
                      return _buildLoadingView();
                    } else if (controller.hasError.value) {
                      return _buildErrorView();
                    } else {
                      return _buildRepositoryDetailView(context);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLoadingView() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppConstants.defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ShimmerLoading(height: 28, width: 200),
          const SizedBox(height: 16),
          const ShimmerLoading(height: 16, width: 300),
          const SizedBox(height: 8),
          const ShimmerLoading(height: 16, width: 250),
          const SizedBox(height: 24),
          
          const ShimmerLoading(height: 150, width: double.infinity),
          const SizedBox(height: 24),
          
          const ShimmerLoading(height: 20, width: 100),
          const SizedBox(height: 8),
          Row(
            children: const [
              ShimmerLoading(height: 30, width: 60),
              SizedBox(width: 16),
              ShimmerLoading(height: 30, width: 60),
              SizedBox(width: 16),
              ShimmerLoading(height: 30, width: 60),
            ],
          ),
          const SizedBox(height: 24),
          
          const ShimmerLoading(height: 20, width: 120),
          const SizedBox(height: 8),
          const ShimmerLoading(height: 16, width: double.infinity),
          const SizedBox(height: 8),
          const ShimmerLoading(height: 16, width: double.infinity),
          const SizedBox(height: 24),
          
          const ShimmerLoading(height: 30, width: 150),
          const SizedBox(height: 16),
          const ShimmerLoading(height: 200, width: double.infinity),
        ],
      ),
    );
  }

  Widget _buildErrorView() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: const LinearGradient(
                  colors: [Color(0xFF442222), Color(0xFF662222)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.red.withOpacity(0.3),
                    blurRadius: 15,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: const Icon(
                Icons.error_outline,
                size: 64,
                color: Colors.redAccent,
              ),
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: AppTheme.cardGradient,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                controller.errorMessage.value,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16, color: AppTheme.textColor),
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: controller.fetchRepositoryDetails,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.accentColor,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              child: const Text('Retry', style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildRepositoryDetailView(BuildContext context) {
    final repo = controller.repository.value;
    
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppConstants.defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Main info card
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: AppTheme.cardGradient,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: const Offset(0, 3),
                  blurRadius: 8,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Description
                if (repo.description?.isNotEmpty == true) ...[                    
                  Text(
                    repo.description!,
                    style: const TextStyle(
                      color: AppTheme.textColor,
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
                
                // Language and visibility
                Row(
                  children: [
                    if (repo.language?.isNotEmpty == true) ...[                        
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: AppTheme.secondaryColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            _buildLanguageColorIndicator(repo.language!),
                            const SizedBox(width: 8),
                            Text(
                              repo.language!,
                              style: const TextStyle(
                                color: AppTheme.textColor,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                    ],
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: AppTheme.secondaryColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            repo.private == true ? Icons.lock : Icons.public,
                            size: 14,
                            color: AppTheme.textColor,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            repo.private == true ? 'Private' : 'Public',
                            style: const TextStyle(
                              color: AppTheme.textColor,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          
          // Stats section
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: AppTheme.cardGradient,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: const Offset(0, 3),
                  blurRadius: 8,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Statistics',
                  style: TextStyle(
                    color: AppTheme.textColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildStatItem(Icons.star, 'Stars', repo.stargazersCount ?? 0),
                    _buildStatItem(Icons.remove_red_eye, 'Watchers', repo.watchersCount ?? 0),
                    _buildStatItem(Icons.fork_right, 'Forks', repo.forksCount ?? 0),
                    _buildStatItem(Icons.bug_report, 'Issues', repo.openIssuesCount ?? 0),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          
          // Date information
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: AppTheme.cardGradient,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: const Offset(0, 3),
                  blurRadius: 8,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Timeline',
                  style: TextStyle(
                    color: AppTheme.textColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                if (repo.createdAt != null) 
                  _buildDateInfo('Created', DateTime.parse(repo.createdAt!)),
                if (repo.updatedAt != null) 
                  _buildDateInfo('Last updated', DateTime.parse(repo.updatedAt!)),
                if (repo.pushedAt != null) 
                  _buildDateInfo('Last pushed', DateTime.parse(repo.pushedAt!)),
              ],
            ),
          ),
          const SizedBox(height: 20),
          
          // Repository Web Link
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: AppTheme.accentGradient,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: AppTheme.accentColor.withOpacity(0.3),
                  offset: const Offset(0, 3),
                  blurRadius: 8,
                ),
              ],
            ),
            child: InkWell(
              onTap: controller.launchRepositoryUrl,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.open_in_browser, color: Colors.white),
                  SizedBox(width: 12),
                  Text(
                    'Open in Browser',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          const SizedBox(height: 20),
          

        ],
      ),
    );
  }
  
  Widget _buildStatItem(IconData icon, String label, int count) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Icon(icon, color: AppTheme.accentColor, size: 22),
          const SizedBox(height: 6),
          Text(
            count.toString(),
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppTheme.accentColor,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              color: AppTheme.subtitleColor,
            ),
          ),
        ],
      ),
    );
  }


  
  Widget _buildDateInfo(String label, DateTime date) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.calendar_today,
            size: 16,
            color: AppTheme.accentColor,
          ),
          const SizedBox(width: 8),
          Text(
            '$label: ',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: AppTheme.subtitleColor,
            ),
          ),
          Expanded(
            child: Text(
              _formatDate(date),
              style: const TextStyle(color: AppTheme.textColor),
            ),
          ),
        ],
      ),
    );
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);
    
    if (difference.inDays < 1) {
      if (difference.inHours < 1) {
        return '${difference.inMinutes} minutes ago';
      }
      return '${difference.inHours} hours ago';
    } else if (difference.inDays < 30) {
      return '${difference.inDays} days ago';
    } else if (difference.inDays < 365) {
      final months = (difference.inDays / 30).floor();
      return '$months months ago';
    } else {
      final years = (difference.inDays / 365).floor();
      return '$years years ago';
    }
  }
  
  Widget _buildLanguageColorIndicator(String language) {
    // GitHub-style language color mapping
    final Map<String, Color> languageColors = {
      'JavaScript': const Color(0xfff1e05a),
      'TypeScript': const Color(0xff2b7489),
      'Python': const Color(0xff3572A5),
      'Java': const Color(0xffb07219),
      'C#': const Color(0xff178600),
      'C++': const Color(0xff00599C),
      'Ruby': const Color(0xff701516),
      'Go': const Color(0xff00ADD8),
      'Swift': const Color(0xffF05138),
      'Kotlin': const Color(0xffA97BFF),
      'Dart': const Color(0xff00B4AB),
      'Rust': const Color(0xffDEA584),
      'PHP': const Color(0xff4F5D95),
      'HTML': const Color(0xffe34c26),
      'CSS': const Color(0xff563d7c),
      'Shell': const Color(0xff89e051),
      'Objective-C': const Color(0xff438eff),
      'Vue': const Color(0xff2c3e50),
      'React': const Color(0xff61dafb),
      'Flutter': const Color(0xff02569B),
    };

    return Container(
      width: 14,
      height: 14,
      decoration: BoxDecoration(
        color: languageColors[language] ?? Colors.grey,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: (languageColors[language] ?? Colors.grey).withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
    );
  }
}
