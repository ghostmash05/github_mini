import 'package:get/get.dart';
import 'package:github_mini/app/modules/search/controllers/search_controller.dart';

class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GithubSearchController>(
      () => GithubSearchController(),
    );
  }
}
