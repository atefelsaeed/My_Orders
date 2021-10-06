import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/views/meal_order/cubits/meal_order_cubit.dart';
import 'package:my_order_app_v1/views/meal_order/states/meal_order_states.dart';

class CounterButton extends StatelessWidget {
  final String text;
  final Function function;

  CounterButton({ required this.text, required this.function});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MealOrderCubit, MealOrderStates>(
        builder: (context, state) {
      MealOrderCubit cubit = MealOrderCubit.get(context);
      return CircleAvatar(
        radius: 15,
        backgroundColor: defaultColor,
        child: TextButton(
          onPressed:function(),
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
      );
    });
  }
}
