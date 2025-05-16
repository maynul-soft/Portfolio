import 'package:get/get.dart';

class CategoryController extends GetxController{
  int selectedIndex = 0 ;
  categoryColorController(index){
    selectedIndex = index;
    update();
  }
}