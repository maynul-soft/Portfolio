import 'package:flutter/material.dart';
import 'package:portfolio/ui/widgets/text_style.dart';

class HorizontalProductCard extends StatelessWidget {
  final String image;
  final String name;
  final String catagory;
  final String price;

  const HorizontalProductCard({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.catagory,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constriants) {
        return Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white12,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(image, height: 100, width: 100, fit: BoxFit.fill),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: constriants.maxWidth - 130,
                        child: Text(
                          name,
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
                          overflow: TextOverflow.visible,
                        ),
                      ),

                      Container(
                        width: constriants.maxWidth - 130,
                        child: Text(
                          catagory,
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 15,color: Colors.black38),
                        ),
                      ),

                      Text(
                        '${price} \$ USD',
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
