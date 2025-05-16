
import 'package:flutter/material.dart';
import 'package:portfolio/ui/widgets/text_style.dart';

class ProductCard extends StatelessWidget {

  final String image;
  final String name;
  final String catagory;
  final String price;


  const ProductCard({
    super.key, required this.image, required this.name, required this.price, required this.catagory,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white12
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(image, height: 170,
                width: 170,
                fit: BoxFit.fill,),
              Container(
                  width: 170,
                  child: Text(name,
                    style: DefineTextStyle.smallNormal(),
                    overflow: TextOverflow.ellipsis,)
              ),
              Container(
                  width: 170,
                  child: Text(catagory,
                    style: DefineTextStyle.smallShadowText(),
                    overflow: TextOverflow.ellipsis,)
              ),
              Text('${price} \$ USD',style: DefineTextStyle.smallNormal(),)
            ],
          ),
        ),
      ),
    );
  }
}