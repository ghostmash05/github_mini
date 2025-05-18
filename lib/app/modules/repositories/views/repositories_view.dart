import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_mini/app/data/models/github_repository.dart';
import 'package:github_mini/app/modules/repositories/controllers/repositories_controller.dart';
import 'package:github_mini/app/utils/constants.dart';
import 'package:github_mini/app/utils/theme.dart';
import 'package:github_mini/app/widgets/animations.dart';
import 'package:github_mini/app/widgets/shimmer_loading.dart';

class RepositoriesView extends GetView<RepositoriesController> {
  const RepositoriesView({Key? key}) : super(key: key);

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
              // Custom header with back button and title
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back,
                          color: AppTheme.textColor),
                      onPressed: () => Get.back(),
                    ),
                    FadeSlideAnimation(
                      duration: AppTheme.mediumAnimationDuration,
                      delay: const Duration(milliseconds: 100),
                      child: Obx(() => Text(
                            '${controller.username.value}\'s Repos',
                            style: AppTheme.titleStyle,
                          )),
                    ),
                    // Empty widget to balance the row
                    const SizedBox(width: 48),
                  ],
                ),
              ),
              // Main content
              Expanded(
                child: GetX<RepositoriesController>(
                  builder: (controller) {
                    if (controller.isLoading.value) {
                      return _buildLoadingView();
                    } else if (controller.hasError.value &&
                        controller.repositories.isEmpty) {
                      return _buildErrorView();
                    } else {
                      return _buildRepositoriesListView(context);
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
    return ListView.builder(
      padding: const EdgeInsets.all(AppConstants.defaultPadding),
      itemCount: 8, // Simulating 8 repositories
      itemBuilder: (context, index) {
        // Apply a staggered animation effect
        return FadeAnimation(
          duration: AppTheme.mediumAnimationDuration,
          delay: Duration(milliseconds: 100 * index),
          child: Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: AppTheme.cardGradient,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const ShimmerLoading(
                      height: 24,
                      width: 200,
                      baseColor: AppTheme.secondaryColor,
                      highlightColor: AppTheme.primaryColor,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 3),
                      decoration: BoxDecoration(
                        color: AppTheme.secondaryColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const ShimmerLoading(
                        height: 16,
                        width: 60,
                        baseColor: AppTheme.secondaryColor,
                        highlightColor: AppTheme.primaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const ShimmerLoading(
                  height: 16,
                  width: 300,
                  baseColor: AppTheme.secondaryColor,
                  highlightColor: AppTheme.primaryColor,
                ),
                const SizedBox(height: 8),
                const ShimmerLoading(
                  height: 16,
                  width: 250,
                  baseColor: AppTheme.secondaryColor,
                  highlightColor: AppTheme.primaryColor,
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.only(top: 12),
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(color: AppTheme.dividerColor, width: 1),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ShimmerLoading(
                        height: 16,
                        width: 80,
                        baseColor: AppTheme.secondaryColor,
                        highlightColor: AppTheme.primaryColor,
                      ),
                      const ShimmerLoading(
                        height: 16,
                        width: 60,
                        baseColor: AppTheme.secondaryColor,
                        highlightColor: AppTheme.primaryColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildErrorView() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeSlideAnimation(
              duration: AppTheme.mediumAnimationDuration,
              child: Container(
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
            ),
            const SizedBox(height: 24),
            FadeSlideAnimation(
              duration: AppTheme.mediumAnimationDuration,
              delay: const Duration(milliseconds: 100),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  gradient: AppTheme.cardGradient,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  controller.errorMessage.value,
                  textAlign: TextAlign.center,
                  style:
                      const TextStyle(fontSize: 16, color: AppTheme.textColor),
                ),
              ),
            ),
            const SizedBox(height: 32),
            FadeSlideAnimation(
              duration: AppTheme.mediumAnimationDuration,
              delay: const Duration(milliseconds: 200),
              child: ElevatedButton(
                onPressed: controller.retryFetchRepositories,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.accentColor,
                  foregroundColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: const Text('Retry', style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRepositoriesListView(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => controller.fetchRepositories(refresh: true),
      child: Column(
        children: [
          // Repository list
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(AppConstants.defaultPadding),
              itemCount: controller.repositories.length,
              itemBuilder: (context, index) {
                return _buildRepositoryItem(
                  context,
                  controller.repositories[index],
                );
              },
            ),
          ),
          // Pagination controls
          _buildPaginationControls(),
        ],
      ),
    );
  }

  Widget _buildPaginationControls() {
    return Obx(() => Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          decoration: BoxDecoration(
            gradient: AppTheme.secondaryGradient,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 8,
                offset: const Offset(0, -2),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Modern pagination controls with repository count
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Repository count indicator on left
                  Expanded(
                    child: Text(
                      'Showing ${controller.repositories.length} out of ${controller.totalRepos.value} repositories',
                      style: const TextStyle(
                        color: AppTheme.textColor,
                        fontSize: 13,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),

                  // Page navigation on right
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Previous page button with rounded design
                      _buildPageNavButton(
                        icon: Icons.chevron_left,
                        onPressed: controller.currentPage.value > 1
                            ? controller.goToPreviousPage
                            : null,
                        tooltip: 'Previous Page',
                      ),

                      // Current page indicator with modern pill design
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          gradient: AppTheme.accentGradient,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          '${controller.currentPage.value} of ${controller.totalPages.value}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),

                      // Next page button with rounded design
                      _buildPageNavButton(
                        icon: Icons.chevron_right,
                        onPressed: controller.currentPage.value <
                                controller.totalPages.value
                            ? controller.goToNextPage
                            : null,
                        tooltip: 'Next Page',
                      ),
                    ],
                  ),
                ],
              ),

              // Loading indicator
              if (controller.isLoading.value || controller.isLoadingMore.value)
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: FadeAnimation(
                    duration: AppTheme.shortAnimationDuration,
                    child: const LinearProgressIndicator(
                      backgroundColor: AppTheme.secondaryColor,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(AppTheme.accentColor),
                      minHeight: 4,
                      borderRadius: BorderRadius.all(Radius.circular(2)),
                    ),
                  ),
                ),
            ],
          ),
        ));
  }

  Widget _buildPageNavButton({
    required IconData icon,
    required VoidCallback? onPressed,
    required String tooltip,
  }) {
    final isDisabled = onPressed == null;

    return Tooltip(
      message: tooltip,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: isDisabled
                ? AppTheme.secondaryColor.withOpacity(0.5)
                : AppTheme.secondaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            icon,
            color: isDisabled ? AppTheme.subtitleColor : AppTheme.accentColor,
            size: 24,
          ),
        ),
      ),
    );
  }

  Widget _buildRepositoryItem(BuildContext context, GitHubRepository repo) {
    return FadeSlideAnimation(
      duration: AppTheme.mediumAnimationDuration,
      beginOffset: const Offset(0, 20),
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
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
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () => controller.navigateToRepositoryDetail(repo),
            borderRadius: BorderRadius.circular(12),
            splashColor: AppTheme.accentColor.withOpacity(0.1),
            highlightColor: AppTheme.accentColor.withOpacity(0.05),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          repo.name ?? 'Unknown Repository',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppTheme.textColor,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      if (repo.stargazersCount != null)
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 3),
                          decoration: BoxDecoration(
                            color: AppTheme.secondaryColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              const Icon(Icons.star,
                                  size: 16, color: Colors.amber),
                              const SizedBox(width: 4),
                              Text(
                                '${repo.stargazersCount}',
                                style:
                                    const TextStyle(color: AppTheme.textColor),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                  if (repo.description?.isNotEmpty == true) ...[
                    const SizedBox(height: 10),
                    Text(
                      repo.description!,
                      style: const TextStyle(
                        color: AppTheme.subtitleColor,
                        fontSize: 14,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.only(top: 12),
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(color: AppTheme.dividerColor, width: 1),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            if (repo.language?.isNotEmpty == true) ...[
                              _buildLanguageColorIndicator(repo.language!),
                              const SizedBox(width: 6),
                              Text(
                                repo.language!,
                                style: const TextStyle(
                                  color: AppTheme.subtitleColor,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ],
                        ),
                        if (repo.forksCount != null)
                          Row(
                            children: [
                              const Icon(Icons.fork_right,
                                  size: 16, color: AppTheme.subtitleColor),
                              const SizedBox(width: 4),
                              Text(
                                '${repo.forksCount}',
                                style: const TextStyle(
                                    color: AppTheme.subtitleColor),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
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
