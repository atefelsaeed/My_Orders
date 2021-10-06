import 'package:flutter/material.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:my_order_app_v1/views/meal_order/cubits/meal_order_cubit.dart';
import 'package:my_order_app_v1/views/meal_order/models/model_meal_order.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';
import 'package:easy_localization/easy_localization.dart';

import 'extras_options_item.dart';

class ExtrasOptions extends StatelessWidget {

  ModelMealOrder modelMealOrder = ModelMealOrder();


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              LocaleKeys.extras.tr(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 5,),
            Text(
              LocaleKeys.options.tr(),
              style: TextStyle(color: Colors.black38),
            ),
          ],
        ),
        SizedBox(height: 5,),
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
                    ...List.generate(
                      modelMealOrder.sizeOptionList.length,
                          (i) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3.0),
                        child: Row(
                          children: [
                            ExtrasOptionSelectedItem(
                              selected: i,
                              onPressed: () {
                                MealOrderCubit.get(context)
                                    .extraOptionSelection(i);
                              },
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              modelMealOrder.sizeOptionList[i].tr(),
                            ),
                            Spacer(),
                            Text(modelMealOrder.salaryOptionList[i]),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
