import 'package:sixdigitguy_app/core/app_export.dart';
import 'package:sixdigitguy_app/presentation/filter_tags_screen/models/filter_tags_model.dart';

class FilterTagsController extends GetxController {
  Rx<FilterTagsModel> filterTagsModelObj = FilterTagsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
