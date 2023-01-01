import '../controller/themes_controller.dart';
import 'package:get/get.dart';

class ThemesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ThemesController());
  }
}
