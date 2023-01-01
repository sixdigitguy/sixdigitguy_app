import 'package:sixdigitguy_app/core/app_export.dart';
import 'package:sixdigitguy_app/presentation/sign_option_screen/models/sign_option_model.dart';

class SignOptionController extends GetxController {
  Rx<SignOptionModel> signOptionModelObj = SignOptionModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
