import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/ui/controller/page_controller.dart';
import 'package:portfolio/ui/screens/profile_screen.dart';
import 'package:portfolio/ui/screens/unknown_screen.dart';
import 'add_to_card_screen.dart';
import 'home_screen.dart';
import 'package:get/get.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  List<Widget> page = [
    HomeScreen(),
    AddToCardScreen(),
    UnknownScreen(),
    ProfileScreen()
  ];
  PageUpdateController pageUpdateController =Get.find<PageUpdateController>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:
        GetBuilder<PageUpdateController>(
          builder: (controller) {
            return page[pageUpdateController.selectedIndex];
          }
        ),

      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        items: <Widget>[
          Icon(Icons.home, size: 30,color:  Colors.white,),
          Icon(Icons.shopping_bag, size: 30 ,color:  Colors.white),
          Icon(Icons.cases_rounded, size: 30,color:  Colors.white),
          Icon(Icons.perm_identity, size: 30,color:  Colors.white),
        ],
        color: Colors.black,

        buttonBackgroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
        pageUpdateController.pageChangeController(index);
        },
        letIndexChange: (index) => true,
      ),
    );
  }

}




