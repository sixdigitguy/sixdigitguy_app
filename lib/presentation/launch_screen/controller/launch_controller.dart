import 'package:sixdigitguy_app/core/app_export.dart';
import 'package:sixdigitguy_app/presentation/launch_screen/models/launch_model.dart';

class LaunchController extends GetxController {
  Rx<LaunchModel> launchModelObj = LaunchModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.toNamed(AppRoutes.signOptionScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
