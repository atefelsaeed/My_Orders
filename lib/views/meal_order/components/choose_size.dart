import 'package:flutter/material.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/views/meal_order/cubits/meal_order_cubit.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';

import 'selected_item.dart';

Widget chooseSize(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        'Choose size',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      heightSizedBox(5),
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black45)),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ListView(
            shrinkWrap: true,
            children: [
              Column(
                children: [
                  heightSizedBox(10),
                  Row(
                    children: [
                      selectedItem(
                        context: context,
                        selected: 0,
                        onPressed: () {
                          MealOrderCubit.get(context).chooseSizeSelection(0);
                        },
                      ),
                      widthSizedBox(5),
                      Text('Large'),
                      Spacer(),
                      Text('20EGY'),
                      widthSizedBox(5),
                    ],
                  ),
                  heightSizedBox(10),
                  Row(
                    children: [
                      selectedItem(
                        context: context,
                        selected: 1,
                        onPressed: () {
                          MealOrderCubit.get(context).chooseSizeSelection(1);
                        },
                      ),
                      widthSizedBox(5),
                      Text('Medium'),
                      Spacer(),
                      Text('15EGY'),
                      widthSizedBox(5),
                    ],
                  ),
                  heightSizedBox(10),
                  Row(
                    children: [
                      selectedItem(
                        context: context,
                        selected: 2,
                        onPressed: () {
                          MealOrderCubit.get(context).chooseSizeSelection(2);
                        },
                      ),
                      widthSizedBox(5),
                      Text('Small'),
                      Spacer(),
                      Text('10EGY'),
                      widthSizedBox(5),
                    ],
                  ),
                  heightSizedBox(10),
                ],
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
