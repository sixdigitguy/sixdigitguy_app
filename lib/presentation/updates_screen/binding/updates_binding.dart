import '../controller/updates_controller.dart';
import 'package:get/get.dart';

class UpdatesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UpdatesController());
  }
}
