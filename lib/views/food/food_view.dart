import 'package:flutter/material.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/views/food/components/food_tap.dart';
import 'package:my_order_app_v1/widgets/home_app_bar.dart';

import 'components/crepe_tab_view.dart';
import 'components/pizaa_tab_view.dart';

class FoodView extends StatelessWidget {
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
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 3,
                      spreadRadius: 2,
                  ),
                ]),
            tabs: [
              Tab(
                child: foodTap(
                  icon: Icons.emoji_food_beverage_rounded,
                  title: 'Crepe',
                ),
              ),
              Tab(
                child: foodTap(
                  icon: Icons.emoji_food_beverage_rounded,
                  title: 'Pizza',
                ),
              ),
              Tab(
                child: foodTap(
                  icon: Icons.emoji_food_beverage_rounded,
                  title: 'Sweet',
                ),
              ),
              Tab(
                child: foodTap(
                  icon: Icons.emoji_food_beverage_rounded,
                  title: 'Sandwich',
                ),
              ),
              Tab(
                child: foodTap(
                  icon: Icons.emoji_food_beverage_rounded,
                  title: 'Ice Cream',
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
                CrepeTabView(),
                PizaaTabView(),
                PizaaTabView(),
                PizaaTabView(),
                PizaaTabView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
