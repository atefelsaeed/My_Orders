import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/views/food/components/item_all_restaurant.dart';
import 'package:my_order_app_v1/views/food/model/all_restaurant_model.dart';
import 'package:my_order_app_v1/widgets/default_button.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';

class AllRestaurant extends StatelessWidget {
  AllRestaurantModel allRestaurantModel = AllRestaurantModel();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Text(
            LocaleKeys.all_restaurants.tr(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        heightSizedBox(10),
        ListView.builder(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          // scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => ItemAllRestaurant(
           img: allRestaurantModel.allRestaurantList[index],
            restaurantName: allRestaurantModel.restaurantName[index],
          ),
          itemCount:allRestaurantModel.allRestaurantList.length,
        ),
        heightSizedBox(20),
        defaultButton(
            function: () {},
            text: LocaleKeys.view_all_restaurants.tr(),
            radius: 10),
        heightSizedBox(20),
      ],
    );
  }
}
