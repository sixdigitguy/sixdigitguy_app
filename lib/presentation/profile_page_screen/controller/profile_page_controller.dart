import 'package:sixdigitguy_app/core/app_export.dart';
import 'package:sixdigitguy_app/presentation/profile_page_screen/models/profile_page_model.dart';

class ProfilePageController extends GetxController {
  Rx<ProfilePageModel> profilePageModelObj = ProfilePageModel().obs;

  RxBool isSelectedSwitch = false.obs;

  RxBool isSelectedSwitch1 = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
