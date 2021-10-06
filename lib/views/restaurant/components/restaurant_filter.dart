import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/views/restaurant/components/item_restaurant_filter.dart';
import 'package:my_order_app_v1/views/restaurant/cubits/restaurant_cubit.dart';
import 'package:my_order_app_v1/views/restaurant/models/model_restaurant.dart';
import 'package:my_order_app_v1/views/restaurant/states/restaurant_states.dart';

class RestaurantFilter extends StatelessWidget {
  var restaurantFilterList = [
    'assets/images/popular.png',
    'assets/images/popular.png',
    'assets/images/popular.png',
    'assets/images/popular.png',
  ];
  // ModelRestaurant modelRestaurant = ModelRestaurant();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RestaurantCubit, RestaurantStates>(
      builder: (context, state) => SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              // scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ItemRestaurantFilter(
                img: restaurantFilterList[index],
                mealName: 'Koshary',
              ),
              itemCount:restaurantFilterList.length,
            ),
          ],
        ),
      ),
    );
  }
}
