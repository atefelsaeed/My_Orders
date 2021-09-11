import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:my_order_app_v1/views/auth/profile/profile.dart';
import 'package:my_order_app_v1/views/home/cubits/home_cubit.dart';
import 'package:my_order_app_v1/views/map_screen/map_screen.dart';
import 'package:my_order_app_v1/views/your_orders/your_orders.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';

import '../home_view.dart';
import 'drawer_item.dart';

Widget drawerBody(context) {
  int cubit = HomeCubit.get(context).getCurrentItem;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      //====================homeItem======================
      drawerItem(
        context: context,
        selected: 0,
        icon: Icons.home,
        text: LocaleKeys.home.tr(),
        onTap: () {
          HomeCubit.get(context).itemSelection(0);
          navigateTo(
              context,
              BlocProvider.value(
                value: HomeCubit.get(context),
                child: HomeView(),
              ));
        },
      ),
      //====================profileItem======================
      drawerItem(
        context: context,
        selected:1,
        icon: Icons.person,
        text: LocaleKeys.profile.tr(),
        onTap: () {
          HomeCubit.get(context).itemSelection(1);
          // HomeCubit.get(context).itemSelection(false);
          navigateTo(
              context,
              BlocProvider.value(
                value: HomeCubit.get(context),
                child: Profile(),
              ));
        },
      ),
      //====================locationItem======================
      drawerItem(
        context: context,
        selected: 2,
        icon: Icons.location_pin,
        text: LocaleKeys.location.tr(),
        onTap: () {
          HomeCubit.get(context).itemSelection(2);
          // HomeCubit.get(context).itemSelection(false);
          navigateTo(
              context,
              BlocProvider.value(
                value: HomeCubit.get(context),
                child: MapSample(),
              ));
        },
      ),
      //====================yourOrdersItem======================
      drawerItem(
        context: context,
        selected: 3,
        icon: Icons.article_rounded,
        text: LocaleKeys.your_orders.tr(),
        onTap: () {
          HomeCubit.get(context).itemSelection(3);
          // HomeCubit.get(context).itemSelection(false);
          navigateTo(
              context,
              BlocProvider.value(
                value: HomeCubit.get(context),
                child: YourOrdersView(),
              ));
        },
      ),
    ],
  );
}
