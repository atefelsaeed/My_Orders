import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/views/home/cubits/home_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:my_order_app_v1/views/home/states/home_states.dart';

Widget drawerItem({
  required IconData icon,
  required String text,
  required int selected,
  required GestureTapCallback onTap,
  context,
}) {
  return BlocBuilder<HomeCubit, HomeStates>(builder: (context, state) {
    HomeCubit cubit = HomeCubit.get(context);
    return Container(
      width: 250,
      height: 60,
      decoration: cubit.isSelected == selected
          ? BoxDecoration(
              color: Colors.black,
              borderRadius: cubit.dropdownValue == 'English'
                  ? BorderRadius.horizontal(right: Radius.circular(30))
                  : BorderRadius.horizontal(
                      left: Radius.circular(30),
                    ),
            )
          : BoxDecoration(
              borderRadius: cubit.dropdownValue == 'English'
                  ? BorderRadius.horizontal(right: Radius.circular(30))
                  : BorderRadius.horizontal(
                      left: Radius.circular(30),
                    ),
            ),
      child: ListTile(
        title: Row(
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
              size: 25,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0,right: 8.0),
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
                ),
              ),
            )
          ],
        ),
        onTap: onTap,
      ),
    );
  });
}
