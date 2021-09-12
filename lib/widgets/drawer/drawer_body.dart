import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:my_order_app_v1/views/auth/profile/profile.dart';
import 'package:my_order_app_v1/views/get_help/get_help_view.dart';
import 'package:my_order_app_v1/views/home/cubits/home_cubit.dart';
import 'package:my_order_app_v1/views/map_screen/map_screen.dart';
import 'package:my_order_app_v1/views/notifications/notifications_view.dart';
import 'package:my_order_app_v1/views/offers/offers_view.dart';
import 'package:my_order_app_v1/views/vouchers/vouchers_view.dart';
import 'package:my_order_app_v1/views/your_orders/your_orders_view.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';

import '../../views/home/home_view.dart';
import 'drawer_footer.dart';
import 'drawer_item.dart';

Widget drawerBody(context) {
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
          print(HomeCubit.get(context).dropdownValue);
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
        selected: 1,
        icon: Icons.person,
        text: LocaleKeys.profile.tr(),
        onTap: () {
          HomeCubit.get(context).itemSelection(1);
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
          navigateTo(
              context,
              BlocProvider.value(
                value: HomeCubit.get(context),
                child: YourOrdersView(),
              ));
        },
      ),
      //====================offersItem======================
      drawerItem(
        context: context,
        selected: 4,
        icon: Icons.local_offer_rounded,
        text: LocaleKeys.offers.tr(),
        onTap: () {
          HomeCubit.get(context).itemSelection(4);
          navigateTo(
              context,
              BlocProvider.value(
                value: HomeCubit.get(context),
                child: OffersView(),
              ));
        },
      ),
      //====================notificationsItem======================
      drawerItem(
        context: context,
        selected: 5,
        icon: Icons.notifications,
        text: LocaleKeys.notifications.tr(),
        onTap: () {
          HomeCubit.get(context).itemSelection(5);
          navigateTo(
              context,
              BlocProvider.value(
                value: HomeCubit.get(context),
                child: NotificationsView(),
              ));
        },
      ),
      //====================paymentItem======================
      drawerItem(
        context: context,
        selected: 6,
        icon: Icons.payment,
        text: LocaleKeys.payment.tr(),
        onTap: () {
          // HomeCubit.get(context).itemSelection(6);
        },
      ),
      //====================vouchersItem======================
      drawerItem(
        context: context,
        selected: 7,
        icon: Icons.auto_awesome_outlined,
        text: LocaleKeys.voucher.tr(),
        onTap: () {
          HomeCubit.get(context).itemSelection(7);
          navigateTo(
              context,
              BlocProvider.value(
                value: HomeCubit.get(context),
                child: VouchersView(),
              ));
        },
      ),
      //====================getHelpItem======================
      drawerItem(
        context: context,
        selected: 8,
        icon: Icons.help,
        text: LocaleKeys.get_help.tr(),
        onTap: () {
          HomeCubit.get(context).itemSelection(8);
          navigateTo(
              context,
              BlocProvider.value(
                value: HomeCubit.get(context),
                child: GetHelpView(),
              ));
        },
      ),
      //====================aboutUsItem======================
      drawerItem(
        context: context,
        selected: 9,
        icon: Icons.info,
        text: LocaleKeys.about_us.tr(),
        onTap: () {
          HomeCubit.get(context).itemSelection(9);
          navigateTo(
              context,
              BlocProvider.value(
                value: HomeCubit.get(context),
                child: NotificationsView(),
              ));
        },
      ),
     heightSizedBox(10),
     //========================drawerFooter=============
      drawerFooter(),
    ],
  );
}
