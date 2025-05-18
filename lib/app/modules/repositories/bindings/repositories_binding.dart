import 'package:get/get.dart';
import 'package:github_mini/app/modules/repositories/controllers/repositories_controller.dart';

class RepositoriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RepositoriesController>(
      () => RepositoriesController(),
    );
  }
}
