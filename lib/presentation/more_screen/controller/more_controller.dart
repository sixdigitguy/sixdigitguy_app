import 'package:sixdigitguy_app/core/app_export.dart';
import 'package:sixdigitguy_app/presentation/more_screen/models/more_model.dart';

class MoreController extends GetxController {
  Rx<MoreModel> moreModelObj = MoreModel().obs;

  RxBool isSelectedSwitch = false.obs;

  RxBool isSelectedSwitch1 = false.obs;

  RxBool isSelectedSwitch2 = false.obs;

  RxBool isSelectedSwitch3 = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
