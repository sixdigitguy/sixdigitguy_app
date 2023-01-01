import 'package:get/get.dart';
import 'library_item_model.dart';

class LibraryModel {
  RxList<LibraryItemModel> libraryItemList =
      RxList.filled(4, LibraryItemModel());
}
