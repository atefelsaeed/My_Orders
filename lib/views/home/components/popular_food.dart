import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_order_app_v1/views/home/models/item_food_model.dart';
import 'package:my_order_app_v1/views/home/widgets/item_popular_food.dart';

class PopularFood extends StatelessWidget {

  final ItemFoodModel itemFoodModel=ItemFoodModel();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      margin: EdgeInsets.only(bottom:MediaQuery.of(context).size.height*.02 ),
      child: ListView.builder(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => ItemPopularFood(
          itemFoodModel.images[index],
          'Ranch Effect Sandwich',
          'Delivery: EGP 15.99',
        ),
        itemCount: itemFoodModel.images.length,
      ),
    );
  }
}
