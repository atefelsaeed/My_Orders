import 'package:flutter/material.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';


 loginAppBar()=> AppBar(
  backgroundColor: Colors.white,
  elevation: 0,
  title: Center(
    child: Text(
      LocaleKeys.login.tr(),
      style: TextStyle(color: Colors.black),
    ),
  ),
);