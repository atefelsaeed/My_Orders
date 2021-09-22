import 'package:flutter/material.dart';
import 'package:my_order_app_v1/views/home/components/popular_food.dart';
import 'package:my_order_app_v1/views/home/models/item_food_model.dart';

class ItemFood extends StatelessWidget {

  ItemFoodModel itemFoodModel=ItemFoodModel();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      child: ListView.builder(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => PopularFoodCard(
          itemFoodModel.images[index],
          'Ranch Effect Sandwich',
          'Delivery: EGP 15.99',
        ),
        itemCount: itemFoodModel.images.length,
      ),
    );
  }
}
