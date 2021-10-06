import 'package:flutter/material.dart';

class MealImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Image.asset(
        'assets/images/popular.png',
        height: MediaQuery.of(context).size.height / 3.5,
        width: MediaQuery.of(context).size.height / 1,
        fit: BoxFit.fill,
      ),
    );
  }
}

