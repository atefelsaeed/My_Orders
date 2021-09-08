import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Text(
              LocaleKeys.home.tr(),
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              await context.setLocale(Locale('en'));
            },
            icon: Icon(Icons.settings,color: defaultColor,),
          ),
          IconButton(
              onPressed: () async {
                await context.setLocale(Locale('ar'));
              },
              icon: Icon(Icons.translate,color: defaultColor,))
        ],
      ),
      body: Container(),
    );
  }
}
