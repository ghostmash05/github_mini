import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_mini/app/modules/search/controllers/search_controller.dart';
import 'package:github_mini/app/utils/theme.dart';
import 'package:github_mini/app/widgets/animations.dart';

class SearchView extends GetView<GithubSearchController> {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppTheme.backgroundGradient,
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                // GitHub logo with animation
                FadeSlideAnimation(
                  duration: AppTheme.mediumAnimationDuration,
                  child: ClipOval(
                    child: Image.network(
                      'https://github.githubassets.com/assets/GitHub-Mark-ea2971cee799.png',
                      width: 100,
                      height: 100,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                      loadingProgress.expectedTotalBytes!
                                  : null,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  AppTheme.accentColor),
                            ),
                          ),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return Icon(
                          Icons.gradient,
                          size: 100,
                          color: AppTheme.accentColor,
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Title with animation
                FadeSlideAnimation(
                  duration: AppTheme.mediumAnimationDuration,
                  delay: const Duration(milliseconds: 100),
                  child: const Text(
                    'GitHub Mini',
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.textColor,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                // Search box with animation
                FadeSlideAnimation(
                  duration: AppTheme.mediumAnimationDuration,
                  delay: const Duration(milliseconds: 300),
                  child: _buildSearchBox(context),
                ),
                const SizedBox(height: 30),
                // Help text with animation
                FadeSlideAnimation(
                  duration: AppTheme.mediumAnimationDuration,
                  delay: const Duration(milliseconds: 400),
                  child: const Text(
                    'Enter a GitHub username for a quick peek',
                    style: AppTheme.subtitleStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBox(BuildContext context) {
    // Don't wrap the entire widget with Obx, only use reactive widgets where needed
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: AppTheme.accentColor.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 15,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: TextField(
        autofocus: true,
        style: const TextStyle(color: AppTheme.textColor),
        decoration: InputDecoration(
          hintText: 'GitHub Username',
          hintStyle: const TextStyle(color: AppTheme.subtitleColor),
          prefixIcon: const Icon(Icons.search, color: AppTheme.subtitleColor),
          fillColor: AppTheme.secondaryColor,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 20.0,
          ),
          suffixIcon: AnimatedContainer(
            duration: AppTheme.shortAnimationDuration,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.horizontal(
                right: Radius.circular(30.0),
              ),
              gradient: AppTheme.accentGradient,
            ),
            child: IconButton(
              icon: const Icon(Icons.arrow_forward, color: Colors.white),
              onPressed: () {
                final text = controller.username.value.isEmpty
                    ? 'octocat'
                    : controller.username.value;
                controller.searchUser(text);
              },
            ),
          ),
        ),
        onChanged: (text) => controller.username.value = text,
        onSubmitted: (text) {
          final searchText = text.isEmpty ? 'octocat' : text;
          controller.searchUser(searchText);
        },
      ),
    );
  }
}
