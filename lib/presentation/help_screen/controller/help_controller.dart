import 'package:sixdigitguy_app/core/app_export.dart';
import 'package:sixdigitguy_app/presentation/help_screen/models/help_model.dart';

class HelpController extends GetxController {
  Rx<HelpModel> helpModelObj = HelpModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
