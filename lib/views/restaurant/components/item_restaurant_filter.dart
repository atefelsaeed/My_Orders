import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:my_order_app_v1/views/meal_order/meal_order_view.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:my_order_app_v1/views/restaurant/cubits/restaurant_cubit.dart';
import 'package:my_order_app_v1/views/restaurant/states/restaurant_states.dart';

import 'package:my_order_app_v1/widgets/navigate_to.dart';

class ItemRestaurantFilter extends StatelessWidget {
  final String img;
  final String mealName;

  const ItemRestaurantFilter({required this.img, required this.mealName});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RestaurantCubit, RestaurantStates>(
      builder: (context, state) => InkWell(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: defaultColor)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    img,
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.width / 3.5,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mealName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Pasta , liver',
                        style: TextStyle(fontSize: 10, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, right: 5, left: 5),
                  child: Text(
                    '${LocaleKeys.price.tr()} : ${LocaleKeys.egp.tr()} 15',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        onTap: () {
          navigateTo(context, MealOrderView());
        },
      ),
    );
  }
}
