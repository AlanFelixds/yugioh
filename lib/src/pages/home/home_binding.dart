import 'package:get/get.dart';
import 'package:yugioh/src/pages/home/home_controller.dart';
import 'package:yugioh/src/pages/home/home_repository.dart';
import 'package:yugioh/src/services/web_service.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeRepository>(() => HomeRepository(WebService()));
    Get.lazyPut<HomeController>(() => HomeController(Get.find()));
  }
}
