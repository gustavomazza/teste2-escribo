import 'package:flutter_application_4/modules/initial/initial_controller.dart';
import 'package:get/get.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(InitialController());
  }
}
