import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:github_mini/app/routes/app_pages.dart';
import 'package:github_mini/app/utils/theme.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Set system UI overlay style for dark theme
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarColor: AppTheme.secondaryColor,
    systemNavigationBarIconBrightness: Brightness.light,
  ));
  
  // Initialize Hive for caching
  await Hive.initFlutter();
  await Hive.openBox('github_cache');
  
  runApp(const GitHubMiniApp());
}

class GitHubMiniApp extends StatelessWidget {
  const GitHubMiniApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GitHub Mini',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      darkTheme: AppTheme.themeData,
      themeMode: ThemeMode.dark, // Always use dark theme
      defaultTransition: Transition.fadeIn, // Smooth transitions between pages
      transitionDuration: AppTheme.mediumAnimationDuration,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
