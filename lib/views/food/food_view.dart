import 'package:flutter/material.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:my_order_app_v1/views/food/components/food_tap.dart';
import 'package:my_order_app_v1/widgets/home_app_bar.dart';

import 'model/food_model.dart';

class FoodView extends StatelessWidget {
  FoodModel foodModel = FoodModel();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Scaffold(
        appBar: homeAppBar(
          context: context,
          iconColor: Colors.black,
          tapBar: TabBar(
            labelPadding: EdgeInsets.symmetric(horizontal: 5),
            isScrollable: true,
            unselectedLabelColor: Colors.black54,
            labelColor: defaultColor,
            indicatorColor: Colors.white,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: defaultColor,
            ),
            tabs: [
              ...List.generate(
                foodModel.pages.length,
                (i) => Tab(
                  child: FoodTap(
                    icon: foodModel.icons[i],
                    title: foodModel.titles[i].tr(),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: TabBarView(
              children: [
                ...List.generate(
                    foodModel.pages.length, (i) => foodModel.pages[i]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
