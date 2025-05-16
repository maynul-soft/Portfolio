import 'package:flutter/material.dart';

Widget buildCatagoryCard({required String image, required Color color}) {
  return Container(
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(20),
    ),
    padding: EdgeInsets.all(10),
    child: Image.asset(image, height: 40, width: 40, fit: BoxFit.cover),
  );
}