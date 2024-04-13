import 'package:get/get.dart';
import 'package:intern_project/home/controller/home_controller.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
