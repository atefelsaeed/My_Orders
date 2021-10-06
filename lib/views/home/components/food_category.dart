import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:my_order_app_v1/views/home/cubits/home_cubit.dart';

import 'package:my_order_app_v1/views/home/models/food_categories_model.dart';
import 'package:my_order_app_v1/views/home/widgets/item_category.dart';

import 'package:my_order_app_v1/widgets/navigate_to.dart';

FoodCategoriesModel foodCategoriesModel = FoodCategoriesModel();

class FoodCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 16,
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * .001),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: foodCategoriesModel.pages.length,
          itemBuilder: (context, i) => ItemCategory(
                index: i,
                selectedIndex: HomeCubit.get(context).categorySelected,
                press: () {
                  HomeCubit.get(context).categoryItemSelection(i);
                  navigateTo(context, foodCategoriesModel.pages[i]);
                },
              )),
    );
  }
}
