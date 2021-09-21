import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';

import 'package:my_order_app_v1/views/food/food_view.dart';

import 'package:my_order_app_v1/widgets/navigate_to.dart';

import '../view.dart';

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

class FoodCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            pages.length,
            (i) => Container(
              margin: const EdgeInsetsDirectional.only(start: 10),
              decoration: BoxDecoration(
                  color: defaultColor, borderRadius: BorderRadius.circular(15)),
              child: TextButton.icon(
                onPressed: () {
                  navigateTo(context, pages[i]);
                },
                icon: Icon(
                  icons[i],
                  color: Colors.white,
                ),
                label: Text(
                  titles[i].tr(),
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

//
// Widget foodCategory() {
//   return BlocBuilder<HomeCubit, HomeStates>(
//     builder: (context, state) {
//       HomeCubit cubit = HomeCubit.get(context);
//       return SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: Row(
//           children: [
//             foodCategoryItem(
//               icon: Icons.view_list_rounded,
//               title: LocaleKeys.all.tr(),
//               function: () {
//                 cubit.categoryItemSelection(0);
//               },
//             ),
//             foodCategoryItem(
//               icon: Icons.fastfood,
//               title: LocaleKeys.food.tr(),
//               function: () {
//                 cubit.categoryItemSelection(1);
//                 navigateTo(context, FoodView());
//               },
//             ),
//             foodCategoryItem(
//               icon: Icons.lunch_dining_rounded,
//               title: LocaleKeys.groceries.tr(),
//               function: () {},
//             ),
//             foodCategoryItem(
//               icon: Icons.cake,
//               title: LocaleKeys.sweet.tr(),
//               function: () {},
//             ),
//             foodCategoryItem(
//               icon: Icons.local_drink_sharp,
//               title: LocaleKeys.drinks.tr(),
//               function: () {},
//             ),
//           ],
//         ),
//       );
//     },
//   );
// }
