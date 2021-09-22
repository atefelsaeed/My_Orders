import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/views/home/cubits/home_cubit.dart';
import 'package:my_order_app_v1/views/home/states/home_states.dart';

Widget foodCategoryItem({
  required IconData icon,
  required String title,
  required function,
}) {
  return BlocBuilder<HomeCubit, HomeStates>(builder: (context, state) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: FlatButton(
        color: defaultColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        onPressed: function,
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  });
}