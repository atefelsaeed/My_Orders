import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';

import '../cubit/cubitDrawer.dart';
import '../states/stateDrawer.dart';

class ItemDrawer extends StatelessWidget {
  final IconData icon;
  final String text;
  final int selected;
  final GestureTapCallback onTap;

  ItemDrawer(
      {required this.icon,
      required this.text,
      required this.selected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DrawerCubit, DrawerStates>(builder: (context, state) {
      DrawerCubit cubit = DrawerCubit.get(context);
      return Container(
        width: MediaQuery.of(context).size.width / 2,
        height: MediaQuery.of(context).size.width / 6,
        decoration: cubit.isSelected == selected
            ? BoxDecoration(
                color: Colors.black,
                borderRadius: context.locale == Locale('ar')
                    ? BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30))
                    : BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30)))
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
                padding: EdgeInsets.symmetric(horizontal: 8.0,),
                child: Text(
                  text,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              )
            ],
          ),
          onTap: onTap,
        ),
      );
    });
  }
}
