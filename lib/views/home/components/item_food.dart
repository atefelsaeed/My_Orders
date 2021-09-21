import 'package:flutter/material.dart';
import 'package:my_order_app_v1/views/home/components/popular_food.dart';

class ItemFood extends StatelessWidget {
  final images = [
    'popular.png',
    'popular.png',
    'popular.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/4,
      child: ListView.builder(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => popularFoodCard(images[index],context),
        itemCount: images.length,
      ),
    );
  }
}
