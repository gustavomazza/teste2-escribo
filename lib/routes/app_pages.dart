import 'package:flutter_application_4/modules/initial/initial_binding.dart';
import 'package:flutter_application_4/modules/initial/initial_view.dart';
import 'package:flutter_application_4/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.INITIAL,
      page: () => InitialView(),
      binding: InitialBinding(),
    ),
  ];
}
