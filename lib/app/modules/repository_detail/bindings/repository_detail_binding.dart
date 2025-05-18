import 'package:get/get.dart';
import 'package:github_mini/app/modules/repository_detail/controllers/repository_detail_controller.dart';

class RepositoryDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RepositoryDetailController>(
      () => RepositoryDetailController(),
    );
  }
}
