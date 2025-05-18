import 'package:get/get.dart';
import 'package:github_mini/app/modules/profile/bindings/profile_binding.dart';
import 'package:github_mini/app/modules/profile/views/profile_view.dart';
import 'package:github_mini/app/modules/repositories/bindings/repositories_binding.dart';
import 'package:github_mini/app/modules/repositories/views/repositories_view.dart';
import 'package:github_mini/app/modules/repository_detail/bindings/repository_detail_binding.dart';
import 'package:github_mini/app/modules/repository_detail/views/repository_detail_view.dart';
import 'package:github_mini/app/modules/search/bindings/search_binding.dart';
import 'package:github_mini/app/modules/search/views/search_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SEARCH;

  static final routes = [
    GetPage(
      name: Routes.SEARCH,
      page: () => const SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: Routes.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: Routes.REPOSITORIES,
      page: () => const RepositoriesView(),
      binding: RepositoriesBinding(),
    ),
    GetPage(
      name: Routes.REPOSITORY_DETAIL,
      page: () => const RepositoryDetailView(),
      binding: RepositoryDetailBinding(),
    ),
  ];
}
