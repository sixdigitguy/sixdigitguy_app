import '../controller/sign_option_controller.dart';
import 'package:get/get.dart';

class SignOptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignOptionController());
  }
}
