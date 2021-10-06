import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:my_order_app_v1/views/meal_order/cubits/meal_order_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:my_order_app_v1/views/meal_order/models/model_meal_order.dart';
import 'package:my_order_app_v1/views/meal_order/states/meal_order_states.dart';
import 'selected_item.dart';

class ChooseSize extends StatelessWidget {
  ModelMealOrder modelMealOrder = ModelMealOrder();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MealOrderCubit, MealOrderStates>(
      builder: (context, state) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.choose_size.tr(),
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
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
                        modelMealOrder.sizeList.length,
                        (i) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 3.0),
                          child: Row(
                            children: [
                              SelectedItem(
                                selected: i,
                                onPressed: () {
                                  MealOrderCubit.get(context)
                                      .chooseSizeSelection(i);
                                },
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                modelMealOrder.sizeList[i].tr(),
                              ),
                              Spacer(),
                              Text(modelMealOrder.salaryList[i]),
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
      ),
    );
  }
}
