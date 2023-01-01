import '../controller/filter_tags_controller.dart';
import 'package:get/get.dart';

class FilterTagsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FilterTagsController());
  }
}
