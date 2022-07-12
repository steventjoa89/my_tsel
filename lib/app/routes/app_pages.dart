import 'package:get/get.dart';
import 'package:my_tsel/app/modules/home/bindings/home_binding.dart';
import 'package:my_tsel/app/modules/home/views/home_view.dart';
import 'package:my_tsel/app/modules/login/bindings/login_binding.dart';
import 'package:my_tsel/app/modules/login/views/login_view.dart';
import 'package:my_tsel/app/routes/routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginView(),
      binding: LoginBindings(),
    ),
  ];
}
