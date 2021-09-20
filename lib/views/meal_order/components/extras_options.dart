import 'package:flutter/material.dart';
import 'package:my_order_app_v1/views/meal_order/cubits/meal_order_cubit.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';

import 'extras_options_item.dart';

Widget extrasOptions(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Row(
        children: [
          Text(
            'Extras',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          widthSizedBox(5),
          Text(
            '(Options)',
            style: TextStyle(color: Colors.black38),
          ),
        ],
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
                      extrasOptionSelectedItem(
                        context: context,
                        selected: 0,
                        onPressed: () {
                          MealOrderCubit.get(context).extraOptionSelection(0);
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
                      extrasOptionSelectedItem(
                        context: context,
                        selected: 1,
                        onPressed: () {
                          MealOrderCubit.get(context).extraOptionSelection(1);
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
                ],
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
