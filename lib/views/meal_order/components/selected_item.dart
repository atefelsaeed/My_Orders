import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/views/meal_order/cubits/meal_order_cubit.dart';

class SelectedItem extends StatelessWidget {
  final Function onPressed;
  final int selected;

  const SelectedItem({required this.onPressed, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.03,
      child: FlatButton(
        padding: EdgeInsets.all(0),
        onPressed: () {
          onPressed();
        },
        minWidth: MediaQuery.of(context).size.width * 0.08,
        height: MediaQuery.of(context).size.height * 0.03,
        color: MealOrderCubit.get(context).chooseSizeItemSelection == selected
            ? defaultColor
            : Colors.white,
        child: Text(''),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: BorderSide(
            color:
                MealOrderCubit.get(context).chooseSizeItemSelection == selected
                    ? defaultColor
                    : Colors.black38,
          ),
        ),
      ),
    );
  }
}
