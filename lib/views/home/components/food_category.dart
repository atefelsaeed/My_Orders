import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/views/food/food_view.dart';
import 'package:my_order_app_v1/views/home/cubits/home_cubit.dart';
import 'package:my_order_app_v1/views/home/states/home_states.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';

import 'food_category_item.dart';

Widget foodCategory() {
  return BlocBuilder<HomeCubit, HomeStates>(builder: (context, state) {
    HomeCubit cubit = HomeCubit.get(context);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          foodCategoryItem(
            icon: Icons.view_list_rounded,
            title: 'All',
            function: () {
              cubit.categoryItemSelection(0);
            },
          ),
          foodCategoryItem(
            icon: Icons.fastfood,
            title: 'Food',
            function: () {
              cubit.categoryItemSelection(1);
              navigateTo(context, FoodView());
            },
          ),
          foodCategoryItem(
            icon: Icons.lunch_dining_rounded,
            title: 'Groceries',
            function: () {},
          ),
          foodCategoryItem(
            icon: Icons.cake,
            title: 'Sweet',
            function: () {},
          ),
          foodCategoryItem(
            icon: Icons.local_drink_sharp,
            title: 'Drinks',
            function: () {},
          ),
        ],
      ),
    );
  });
}
