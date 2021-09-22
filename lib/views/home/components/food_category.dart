import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:my_order_app_v1/const/style.dart';

import 'package:my_order_app_v1/views/home/models/food_categories_model.dart';

import 'package:my_order_app_v1/widgets/navigate_to.dart';

FoodCategoriesModel foodCategoriesModel = FoodCategoriesModel();

class FoodCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            foodCategoriesModel.pages.length,
            (i) => Container(
              margin: const EdgeInsetsDirectional.only(start: 10),
              decoration: BoxDecoration(
                  color: defaultColor, borderRadius: BorderRadius.circular(15)),
              child: TextButton.icon(
                onPressed: () {
                  navigateTo(context, foodCategoriesModel.pages[i]);
                },
                icon: Icon(
                  foodCategoriesModel.icons[i],
                  color: Colors.white,
                ),
                label: Text(
                  foodCategoriesModel.titles[i].tr(),
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
