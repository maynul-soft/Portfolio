import 'package:get/get.dart';
import 'package:portfolio/ui/controller/category_controller.dart';
import 'package:portfolio/ui/controller/page_controller.dart';

class ControllerBinder extends Bindings{
  @override
  void dependencies() {
    Get.put(PageUpdateController());
    Get.put(CategoryController());
  }

}