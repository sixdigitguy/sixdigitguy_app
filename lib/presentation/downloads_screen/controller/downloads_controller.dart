import 'package:sixdigitguy_app/core/app_export.dart';
import 'package:sixdigitguy_app/presentation/downloads_screen/models/downloads_model.dart';

class DownloadsController extends GetxController {
  Rx<DownloadsModel> downloadsModelObj = DownloadsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
