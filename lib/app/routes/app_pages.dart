import 'package:get/get.dart';
import 'package:my_tsel/app/modules/home/bindings/home_binding.dart';
import 'package:my_tsel/app/modules/home/views/home_view.dart';
import 'package:my_tsel/app/routes/routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      binding: HomeBindings(),
    ),
  ];
}
