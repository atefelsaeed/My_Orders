import 'package:flutter/material.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';


 signUpAppBar()=> AppBar(
  backgroundColor: Colors.white,
  elevation: 0,
  title: Center(
    child: Text(
      LocaleKeys.welcome_to_wasly.tr(),
      style: TextStyle(color: Colors.black),
    ),
  ),
);