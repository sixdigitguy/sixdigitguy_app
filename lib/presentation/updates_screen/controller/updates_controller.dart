import 'package:sixdigitguy_app/core/app_export.dart';
import 'package:sixdigitguy_app/presentation/updates_screen/models/updates_model.dart';

class UpdatesController extends GetxController {
  Rx<UpdatesModel> updatesModelObj = UpdatesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
