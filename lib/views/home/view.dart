import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:my_order_app_v1/views/home/components/popular_food_restaurant.dart';
import 'package:my_order_app_v1/views/home/components/special_food_offers.dart';
import 'package:my_order_app_v1/widgets/drawer/drawer_view.dart';
import 'package:my_order_app_v1/views/home/states/home_states.dart';
import 'package:my_order_app_v1/widgets/home_app_bar.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';

import 'components/slider_images.dart';
import 'components/food_category.dart';
import 'components/popular_food.dart';
import 'widgets/item_load_more.dart';
import 'cubits/home_cubit.dart';

class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state) {},
        builder: (context, state) {
          HomeCubit.get(context).categorySelected=0;
          return Scaffold(
          drawer: HomeDrawer(),
          appBar: homeAppBar(context: context, iconColor: defaultColor),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                FoodCategories(),
                SliderImages(),
                ItemLoadMore(
                  title: LocaleKeys.popular_food.tr(),
                ),
                PopularFood(),
                ItemLoadMore(
                  title: LocaleKeys.popular_brands.tr(),
                  fontSize: 13,
                ),
                PopularFoodRestaurant(),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    LocaleKeys.special_offers.tr(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),
                  ),
                ),
                SpecialFoodOffers(),
                SliderImages(),
              ],
            ),
          ),
        );
        },
      ),
    );
  }
}
