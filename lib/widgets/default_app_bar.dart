import 'package:flutter/material.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

defaultAppBar(String title, {PreferredSizeWidget? tapBar,Color? iconColor}) => AppBar(
      iconTheme: IconThemeData(color: iconColor),
      backgroundColor: Colors.white,
      elevation: 0,
      title: Center(
        child: Text(
          title,
          style: TextStyle(color: Colors.black),
        ),
      ),
      bottom: tapBar,
    );
