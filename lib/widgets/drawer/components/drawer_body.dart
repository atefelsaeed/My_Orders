import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:my_order_app_v1/views/home/cubits/home_cubit.dart';

import 'package:my_order_app_v1/widgets/drawer/model/model_drawer.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';

import '../cubit/cubitDrawer.dart';
import '../widgets/item_drawer.dart';

class DrawerBody extends StatelessWidget {
  final modelDrawer = ModelDrawer();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: modelDrawer.title.length,
        itemBuilder: (context, index) => ItemDrawer(
          selected: index,
          icon: modelDrawer.icon[index],
          text: modelDrawer.title[index].tr(),
          onTap: () {
            DrawerCubit.get(context).itemSelection(index);
            print(DrawerCubit.get(context).dropdownValue);
            navigateTo(
                context,
                BlocProvider.value(
                  value: DrawerCubit.get(context),
                  child: modelDrawer.screens[index],
                ));
          },
        ),
      ),
    );
  }
}
