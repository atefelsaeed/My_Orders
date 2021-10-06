import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/views/meal_order/cubits/meal_order_cubit.dart';
import 'package:my_order_app_v1/views/meal_order/states/meal_order_states.dart';

class MealCount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MealOrderCubit, MealOrderStates>(
        builder: (context, state) {
      MealOrderCubit cubit = MealOrderCubit.get(context);
      return Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Koshary Gadoo',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Pasta',
                style: TextStyle(color: Colors.black54, fontSize: 16),
              ),
            ],
          ),
          Spacer(),
          Column(
            children: [
              Row(
                children: [
                  //=============addMealOrder======================
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: defaultColor,
                    child: TextButton(
                      onPressed: () {
                        if (cubit.counter >= 0) {
                          cubit.counter++;
                          cubit.changeCounter();
                        }
                        print('counter${cubit.counter}');
                      },
                      child: Text(
                        '+',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Text('${cubit.counter}'),
                  SizedBox(width: 5,),
                  //=============removeMealOrder======================
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: defaultColor,
                    child: TextButton(
                      onPressed: () {
                        if (cubit.counter > 1) {
                          cubit.counter--;
                          cubit.changeCounter();
                        }
                        print('counter:${cubit.counter}');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Divider(
                          color: Colors.white,
                          thickness: 2,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: defaultColor)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: Text('${cubit.mealCoast * cubit.counter}EGY'),
                ),
              ),
            ],
          ),
        ],
      );
    });
  }
}
