import 'package:get/get.dart';
import 'package:github_mini/app/routes/app_pages.dart';

class GithubSearchController extends GetxController {
  final RxString username = ''.obs;
  final RxBool isSearching = false.obs;
  
  void searchUser(String username) {
    if (username.isEmpty) return;
    
    this.username.value = username;
    isSearching.value = true;
    
    // Navigate to profile page with the username
    Get.toNamed(Routes.PROFILE, arguments: username);
    isSearching.value = false;
  }
}
