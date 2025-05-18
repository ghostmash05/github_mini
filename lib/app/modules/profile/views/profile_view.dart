import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_mini/app/modules/profile/controllers/profile_controller.dart';
import 'package:github_mini/app/utils/constants.dart';
import 'package:github_mini/app/utils/theme.dart';
import 'package:github_mini/app/widgets/animations.dart';
import 'package:github_mini/app/widgets/shimmer_loading.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

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
              // Custom header with back button and search
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back, color: AppTheme.textColor),
                      onPressed: () => Get.back(),
                    ),
                    FadeSlideAnimation(
                      duration: AppTheme.mediumAnimationDuration,
                      delay: const Duration(milliseconds: 100),
                      child: const Text(
                        'Profile',
                        style: AppTheme.titleStyle,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.search, color: AppTheme.textColor),
                      onPressed: () => _showSearchDialog(context),
                    ),
                  ],
                ),
              ),
              // Main content - Using only a single Obx for the entire content
              Expanded(
                child: GetX<ProfileController>( // Using GetX instead of Obx for more control
                  builder: (controller) {
                    if (controller.isLoading.value) {
                      return _buildLoadingView();
                    } else if (controller.hasError.value) {
                      return _buildErrorView();
                    } else {
                      return _buildProfileView();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      // No floating action button
    );
  }

  Widget _buildLoadingView() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppConstants.defaultPadding),
      child: Column(
        children: [
          FadeAnimation(
            duration: AppTheme.mediumAnimationDuration,
            child: const ShimmerLoading(
              height: 120, 
              width: 120, 
              isCircular: true,
              baseColor: AppTheme.secondaryColor,
              highlightColor: AppTheme.primaryColor,
            ),
          ),
          const SizedBox(height: 24),
          FadeAnimation(
            duration: AppTheme.mediumAnimationDuration,
            delay: const Duration(milliseconds: 100),
            child: const ShimmerLoading(
              height: 30, 
              width: 200,
              baseColor: AppTheme.secondaryColor,
              highlightColor: AppTheme.primaryColor,
            ),
          ),
          const SizedBox(height: 10),
          FadeAnimation(
            duration: AppTheme.mediumAnimationDuration,
            delay: const Duration(milliseconds: 200),
            child: const ShimmerLoading(
              height: 18, 
              width: 150,
              baseColor: AppTheme.secondaryColor,
              highlightColor: AppTheme.primaryColor,
            ),
          ),
          const SizedBox(height: 32),
          FadeAnimation(
            duration: AppTheme.mediumAnimationDuration,
            delay: const Duration(milliseconds: 300),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: AppTheme.cardGradient,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const ShimmerLoading(
                height: 100, 
                width: double.infinity,
                baseColor: AppTheme.secondaryColor,
                highlightColor: AppTheme.primaryColor,
              ),
            ),
          ),
          const SizedBox(height: 24),
          FadeAnimation(
            duration: AppTheme.mediumAnimationDuration,
            delay: const Duration(milliseconds: 400),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: AppTheme.cardGradient,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  3,
                  (index) => const ShimmerLoading(
                    height: 60, 
                    width: 80,
                    baseColor: AppTheme.secondaryColor,
                    highlightColor: AppTheme.primaryColor,
                  ),
                ),
              ),
            ),
          ),
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
                  style: const TextStyle(fontSize: 16, color: AppTheme.textColor),
                ),
              ),
            ),
            const SizedBox(height: 32),
            FadeSlideAnimation(
              duration: AppTheme.mediumAnimationDuration,
              delay: const Duration(milliseconds: 200),
              child: ElevatedButton(
                onPressed: controller.retryFetchUser,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.accentColor,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                child: const Text('Retry', style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileView() {
    final user = controller.user.value;
    
    return RefreshIndicator(
      onRefresh: () => controller.fetchUserProfile(controller.username.value),
      backgroundColor: AppTheme.secondaryColor,
      color: AppTheme.accentColor,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(AppConstants.defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile image with animation
            FadeSlideAnimation(
              duration: AppTheme.mediumAnimationDuration,
              delay: const Duration(milliseconds: 200),
              child: Hero(
                tag: 'profile_image_${user.login}',
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.accentColor.withOpacity(0.3),
                        blurRadius: 15,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: AppTheme.secondaryColor,
                    backgroundImage: user.avatarUrl?.isNotEmpty == true
                        ? CachedNetworkImageProvider(user.avatarUrl!)
                        : null,
                    child: user.avatarUrl == null
                        ? const Icon(Icons.person, size: 60, color: AppTheme.textColor)
                        : null,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            // User name with animation
            FadeSlideAnimation(
              duration: AppTheme.mediumAnimationDuration,
              delay: const Duration(milliseconds: 300),
              child: Text(
                user.name ?? '',
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.textColor,
                ),
              ),
            ),
            if (user.login?.isNotEmpty == true) ...[
              const SizedBox(height: 4),
              // Username with animation
              FadeSlideAnimation(
                duration: AppTheme.mediumAnimationDuration,
                delay: const Duration(milliseconds: 350),
                child: Text(
                  '@${user.login}',
                  style: const TextStyle(
                    fontSize: 16,
                    color: AppTheme.subtitleColor,
                  ),
                ),
              ),
            ],
            const SizedBox(height: 24),
            if (user.bio?.isNotEmpty == true) ...[
              // Bio with animation
              FadeSlideAnimation(
                duration: AppTheme.mediumAnimationDuration,
                delay: const Duration(milliseconds: 400),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: AppTheme.cardGradient,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    user.bio!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                      color: AppTheme.textColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
            ],
            // User details section with animation
            if (user.location?.isNotEmpty == true ||
                user.blog?.isNotEmpty == true ||
                user.email?.isNotEmpty == true) ...[
              FadeSlideAnimation(
                duration: AppTheme.mediumAnimationDuration,
                delay: const Duration(milliseconds: 450),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: AppTheme.cardGradient,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      _buildUserDetailItem(Icons.location_on, user.location),
                      _buildUserDetailItem(Icons.link, user.blog),
                      _buildUserDetailItem(Icons.email, user.email),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
            ],
            // Stats section with animation
            FadeSlideAnimation(
              duration: AppTheme.mediumAnimationDuration,
              delay: const Duration(milliseconds: 500),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  gradient: AppTheme.cardGradient,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildStatItem('Repos', user.publicRepos ?? 0),
                    _buildDivider(),
                    _buildStatItem('Followers', user.followers ?? 0),
                    _buildDivider(),
                    _buildStatItem('Following', user.following ?? 0),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            FadeSlideAnimation(
              duration: AppTheme.mediumAnimationDuration,
              delay: const Duration(milliseconds: 550),
              child: GestureDetector(
                onTap: controller.navigateToRepositories,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                    gradient: AppTheme.accentGradient,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.accentColor.withOpacity(0.3),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.storage, color: Colors.white),
                      SizedBox(width: 12),
                      Text(
                        'View Repositories',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
  
  Widget _buildDivider() {
    return Container(
      height: 30,
      width: 1,
      color: AppTheme.dividerColor,
    );
  }

  Widget _buildUserDetailItem(IconData icon, String? text) {
    if (text?.isEmpty ?? true) return const SizedBox.shrink();
    
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 18, color: AppTheme.accentColor),
          const SizedBox(width: 12),
          Text(
            text!,
            style: const TextStyle(
              fontSize: 15, 
              color: AppTheme.textColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(String label, int count) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Text(
            count.toString(),
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: AppTheme.accentColor,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              color: AppTheme.subtitleColor,
            ),
          ),
        ],
      ),
    );
  }

  void _showSearchDialog(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    searchController.text = controller.username.value;
    
    Get.dialog(
      AlertDialog(
        title: const Text('Search GitHub User'),
        content: TextField(
          controller: searchController,
          autofocus: true,
          decoration: const InputDecoration(
            hintText: 'Enter GitHub username',
            prefixIcon: Icon(Icons.person),
          ),
          onSubmitted: (value) {
            if (value.isNotEmpty) {
              controller.fetchUserProfile(value);
              Get.back();
            }
          },
        ),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: const Text('CANCEL'),
          ),
          TextButton(
            onPressed: () {
              if (searchController.text.isNotEmpty) {
                controller.fetchUserProfile(searchController.text);
                Get.back();
              }
            },
            child: const Text('SEARCH'),
          ),
        ],
      ),
    );
  }
}
