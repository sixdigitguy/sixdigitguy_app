import 'package:sixdigitguy_app/core/app_export.dart';
import 'package:sixdigitguy_app/presentation/themes_screen/models/themes_model.dart';

class ThemesController extends GetxController {
  Rx<ThemesModel> themesModelObj = ThemesModel().obs;

  RxString radioGroup = "".obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
