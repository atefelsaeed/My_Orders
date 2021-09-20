import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/views/meal_order/cubits/meal_order_cubit.dart';

Widget extrasOptionSelectedItem( {
  required  Function onPressed,
  required int selected,
  required context,
}) {
  return Container(
    height: 20,
    child: FlatButton(
      padding: EdgeInsets.all(0),
      onPressed: (){
        onPressed();
      },
      minWidth: 30,

      height: 20,
      color: MealOrderCubit.get(context).extraOptionItemSelection == selected
          ? defaultColor
          : Colors.white,
      child: Text(''),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
        side: BorderSide(
          color: MealOrderCubit.get(context).extraOptionItemSelection == selected
              ? defaultColor
              : Colors.black38,
        ),
      ),
    ),
  );
}
