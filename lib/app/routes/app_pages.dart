import 'package:get/get.dart';

import '../modules/ViewData/bindings/view_data_binding.dart';
import '../modules/ViewData/views/view_data_view.dart';
import '../modules/crud/bindings/crud_binding.dart';
import '../modules/crud/views/crud_view.dart';
import '../modules/edit/bindings/edit_binding.dart';
import '../modules/edit/views/edit_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CRUD,
      page: () => CrudView(),
      binding: CrudBinding(),
    ),
    GetPage(
      name: _Paths.VIEW_DATA,
      page: () => ViewDataView(),
      binding: ViewDataBinding(),
    ),
    GetPage(
      name: _Paths.EDIT,
      page: () => EditView(),
      binding: EditBinding(),
    ),
  ];
}
