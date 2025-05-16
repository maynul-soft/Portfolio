import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controller_binder.dart';
import 'package:portfolio/ui/screens/main_bottom_nav_screen.dart';
import 'package:portfolio/ui/screens/product_details_screen.dart';

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/detailsScreen', page: ()=> ProductDetailsScreen()),
      ],
      debugShowCheckedModeBanner: false,
      title: "Food Delivery",
      home: MainBottomNavScreen(),
      initialBinding: ControllerBinder(),
    );
  }
}
