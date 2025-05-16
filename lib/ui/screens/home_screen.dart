import 'package:flutter/material.dart';
import 'package:portfolio/ui/controller/category_controller.dart';
import '../widgets/build_category_card.dart';
import '../widgets/horizontal_product_card.dart';
import '../widgets/product_card.dart';
import '../widgets/text_style.dart';
import 'package:get/get.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> catagorySectionList = [
    'assets/images/ice-cream.png',
    'assets/images/pizza.png',
    'assets/images/salad.png',
    'assets/images/burger.png',
  ];

  CategoryController categoryController = Get.find<CategoryController>();


  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: 50, left: 20, right: 20),
      height: screenHeight,
      width: screenWidth,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hello Maynul,', style: DefineTextStyle.medium()),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  child: Icon(
                    Icons.shopping_cart_checkout_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text('Delicious Food', style: DefineTextStyle.large()),
            Text(
              'Discover and get great food',
              style: DefineTextStyle.smallShadowText(),
            ),
            SizedBox(height: 30),
            GetBuilder<CategoryController>(
              builder: (controller) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ...List.generate(
                      4,
                      (index) => GestureDetector(
                        onTap: (){
                          controller.categoryColorController(index);
                        },
                        child: buildCatagoryCard(
                          image: catagorySectionList[index],
                          color: controller.selectedIndex == index? Colors.black12:Colors.black54,
                        ),
                      ),
                    ),
                  ],
                );
              }
            ),
            SizedBox(height: 50),
            SizedBox(
              height: 280,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: product.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(onTap: _goToDetailsScreen,child: product[index],),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(width: 10);
                },
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: horizontalProduct.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(onTap: _goToDetailsScreen,child: horizontalProduct[index],),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 10);
              },
            ),
          ],
        ),
      ),
    );
  }

  _goToDetailsScreen(){
    Get.toNamed('/detailsScreen');

  }

  final List<ProductCard> product = [
    ProductCard(
      image: 'assets/images/salad2.png',
      name: 'Veggei tecco hash',
      catagory: 'Fresh and healthy',
      price: '28',
    ),
    ProductCard(
      image: 'assets/images/salad3.png',
      name: 'Veggei tecco hash',
      catagory: 'Fresh and healthy',
      price: '28',
    ),
    ProductCard(
      image: 'assets/images/salad4.png',
      name: 'Veggei tecco hash',
      catagory: 'Fresh and healthy',
      price: '28',
    ),
  ];

  final List<HorizontalProductCard> horizontalProduct = [
    HorizontalProductCard(
      image: 'assets/images/salad2.png',
      name: 'Veggei tecco hash',
      catagory: 'Fresh and healthy',
      price: '28',
    ),
    HorizontalProductCard(
      image: 'assets/images/salad3.png',
      name: 'Veggei tecco hash',
      catagory: 'Fresh and healthy',
      price: '28',
    ),
    HorizontalProductCard(
      image: 'assets/images/salad4.png',
      name: 'Veggei tecco hash',
      catagory: 'Fresh and healthy',
      price: '28',
    ),
  ];
}
