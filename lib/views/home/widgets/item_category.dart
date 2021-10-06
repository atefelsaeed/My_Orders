import 'package:flutter/material.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/views/home/components/food_category.dart';
import 'package:easy_localization/easy_localization.dart';

class ItemCategory extends StatelessWidget {
  final index;
  final selectedIndex;
  final press;

  ItemCategory({this.index, this.selectedIndex, this.press});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(start: 10),
      decoration: BoxDecoration(
          color: selectedIndex == index ? Colors.green : defaultColor,
          borderRadius: BorderRadius.circular(15)),
      child: TextButton.icon(
        onPressed: press,
        icon: Icon(
          foodCategoriesModel.icons[index],
          color: Colors.white,
        ),
        label: Text(
          foodCategoriesModel.titles[index].tr(),
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
