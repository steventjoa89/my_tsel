import 'package:get/get.dart';
import 'package:my_tsel/app/modules/home/controllers/home_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
