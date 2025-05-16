import 'package:get/get.dart';

class PageUpdateController extends GetxController {
  int selectedIndex = 0;

  pageChangeController(int index) {
    selectedIndex = index;
    update();
  }
}
