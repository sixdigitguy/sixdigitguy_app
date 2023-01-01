import 'package:sixdigitguy_app/core/app_export.dart';
import 'package:sixdigitguy_app/presentation/about_screen/models/about_model.dart';

class AboutController extends GetxController {
  Rx<AboutModel> aboutModelObj = AboutModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
