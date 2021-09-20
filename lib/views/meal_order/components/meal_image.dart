import 'package:flutter/material.dart';

Widget mealImage() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(25),
    child: Image.asset(
      'assets/images/popular.png',
      height: 180,
      width: double.infinity,
      fit: BoxFit.fill,
    ),
  );
}
