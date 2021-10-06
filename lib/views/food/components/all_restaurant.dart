import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';

import 'package:my_order_app_v1/views/food/widgets/item_all_restaurant.dart';
import 'package:my_order_app_v1/views/food/cubit/food_cubit.dart';
import 'package:my_order_app_v1/views/food/model/all_restaurant_model.dart';
import 'package:my_order_app_v1/views/food/states/food_states.dart';
import 'package:my_order_app_v1/widgets/default_button.dart';

class AllRestaurant extends StatelessWidget {
  final AllRestaurantModel allRestaurantModel = AllRestaurantModel();

  @override
  Widget build(BuildContext context) {
    int list = allRestaurantModel.allRestaurantList.length;

    return BlocBuilder<FoodCubit, FoodStates>(builder: (context, state) {
      FoodCubit cubit = FoodCubit.get(context);
      return Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              LocaleKeys.all_restaurants.tr(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 20),
              height: MediaQuery.of(context).size.height / 3,
              child: ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) => ItemAllRestaurant(
                  img: allRestaurantModel.allRestaurantList[index],
                  restaurantName: allRestaurantModel.restaurantName[index],
                  mealName: allRestaurantModel.mealName[index],
                ),
                itemCount: list,
              ),
            ),
            defaultButton(
                function: () {},
                text: LocaleKeys.view_all_restaurants.tr(),
                radius: 10,
              isUpperCase: false
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      );
    });
  }
}
