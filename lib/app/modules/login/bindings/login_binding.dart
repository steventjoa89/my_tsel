import 'package:get/get.dart';
import 'package:my_tsel/app/modules/login/controllers/login_controller.dart';

class LoginBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(LoginController());
  }
}
