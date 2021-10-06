import 'package:flutter/material.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:my_order_app_v1/views/food/pages/crepe_tab_view.dart';
import 'package:my_order_app_v1/views/food/pages/pizaa_tab_view.dart';

class FoodModel{
  var pages = [
    CrepeTabView(),
    PizaaTabView(),
    PizaaTabView(),
    PizaaTabView(),
    PizaaTabView(),
  ];

  List<IconData> icons = [
    Icons.local_pizza_outlined,
    Icons.local_pizza,
    Icons.cake,
    Icons.lunch_dining,
    Icons.icecream
  ];

  var titles = [
    LocaleKeys.crepe,
    LocaleKeys.pizza,
    LocaleKeys.sweet,
    LocaleKeys.sandwich,
    LocaleKeys.ice_cream,
  ];
}