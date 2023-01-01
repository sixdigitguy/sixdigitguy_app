import 'package:sixdigitguy_app/core/app_export.dart';
import 'package:sixdigitguy_app/presentation/library_screen/models/library_model.dart';

class LibraryController extends GetxController {
  Rx<LibraryModel> libraryModelObj = LibraryModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
