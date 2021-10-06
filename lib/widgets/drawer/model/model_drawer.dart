import 'package:flutter/material.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:my_order_app_v1/views/about_us/view.dart';
import 'package:my_order_app_v1/views/auth/profile/profile.dart';
import 'package:my_order_app_v1/views/get_help/get_help_view.dart';
import 'package:my_order_app_v1/views/home/view.dart';
import 'package:my_order_app_v1/views/map_screen/map_screen.dart';
import 'package:my_order_app_v1/views/notifications/notifications_view.dart';
import 'package:my_order_app_v1/views/offers/offers_screen.dart';
import 'package:my_order_app_v1/views/vouchers/vouchers_view.dart';
import 'package:my_order_app_v1/views/your_orders/orders.dart';

class ModelDrawer{

  var icon=[
    Icons.home,
    Icons.person,
    Icons.location_pin,
    Icons.article_rounded,
    Icons.local_offer_rounded,
    Icons.notifications,
    Icons.payment,
    Icons.auto_awesome_outlined,
    Icons.help,
    Icons.info,
  ];

  var title=[
    LocaleKeys.home,
    LocaleKeys.profile,
    LocaleKeys.location,
    LocaleKeys.your_orders,
    LocaleKeys.offers,
    LocaleKeys.notifications,
    LocaleKeys.payment,
    LocaleKeys.voucher,
    LocaleKeys.get_help,
    LocaleKeys.about_us,
  ];

  var screens=[
    HomeView(),
    Profile(),
    MapSample(),
    OrdersScreen(),
    OffersScreen(),
    NotificationsView(),
    null,
    VouchersView(),
    GetHelpView(),
    AboutUsView(),
  ];
}