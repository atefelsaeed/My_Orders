import 'package:flutter/material.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:my_order_app_v1/views/food/view.dart';

import '../view.dart';

class FoodCategoriesModel{
  var pages = [
    HomeView(),
    FoodView(),
    FoodView(),
    FoodView(),
    FoodView(),
  ];

  var icons = [
    Icons.view_list_rounded,
    Icons.fastfood,
    Icons.lunch_dining_rounded,
    Icons.cake,
    Icons.local_drink_sharp
  ];

  var titles = [
    LocaleKeys.all,
    LocaleKeys.food,
    LocaleKeys.groceries,
    LocaleKeys.sweet,
    LocaleKeys.drinks,
  ];

}