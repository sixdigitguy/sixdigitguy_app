import '../controller/launch_controller.dart';
import 'package:get/get.dart';

class LaunchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LaunchController());
  }
}
