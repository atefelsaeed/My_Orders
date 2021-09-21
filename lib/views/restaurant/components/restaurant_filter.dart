import 'package:flutter/material.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/views/meal_order/meal_order_view.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';

List<String> restaurantFilterList = [
  'assets/images/popular.png',
  'assets/images/popular.png',
  'assets/images/popular.png',
  'assets/images/popular.png',
];

Widget restaurantFilter() {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          // scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => restaurantFilterCard(
            context,
            index: index,
            mealName: 'Koshary',
          ),
          itemCount: restaurantFilterList.length,
        ),
      ],
    ),
  );
}

Widget restaurantFilterCard(context, {int? index, String? mealName}) {
  return InkWell(
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
                restaurantFilterList[index!],
                width: 120,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            widthSizedBox(5),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mealName!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  heightSizedBox(10),
                  Text(
                    'Pasta , liver',
                    style: TextStyle(fontSize: 10, color: Colors.black),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, right: 5),
              child: Text(
                'Price : EGY 15',
                style: TextStyle(
                  fontSize: 10,
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
  );
}
