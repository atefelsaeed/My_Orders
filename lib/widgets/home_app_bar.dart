import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';


import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/views/filtter/filtter_view.dart';
import 'package:my_order_app_v1/views/map_screen/map_screen.dart';
import 'package:my_order_app_v1/views/search/search_view.dart';
import 'package:my_order_app_v1/widgets/drawer/drawer_view.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';

homeAppBar({PreferredSizeWidget? tapBar, Color? iconColor,context}) {
  return AppBar(
    iconTheme: IconThemeData(color: iconColor),
    backgroundColor: Colors.white,
    elevation: 0,
    // leading: IconButton(icon: Icon(Icons.sort,), onPressed: () { navigateTo(context, HomeDrawer()); },),
    actions: [
      Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            border: Border.all(color: defaultColor)),
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: Colors.black54,
            ),
            TextButton(
                onPressed: () {
                  navigateTo(context, SearchView());
                },
                child: Text(
                  LocaleKeys.search_text.tr(),
                  style: TextStyle(fontSize: 10, color: Colors.black54),
                )),
            IconButton(
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              onPressed: () {navigateTo(context, FilterView());},
              icon: Icon(
                Icons.filter_alt_sharp,
                color: defaultColor,
              ),
            )
          ],
        ),
      ),
      IconButton(
        padding: EdgeInsets.zero,
        constraints: BoxConstraints(),
        onPressed: () {},
        icon: Icon(
          Icons.free_breakfast,
          color: defaultColor,
        ),
      ),

      Builder(
        builder: (context) => Center(
            child: TextButton(
          onPressed: () {
            navigateAndFinish(context, MapSample());
          },
          child: Text(
            'EL-GALLA Street',
            style: TextStyle(color: Colors.black, fontSize: 10),
          ),
        )),
      ),
      Icon(
        Icons.location_pin,
        color: defaultColor,
      ),
    ],
    bottom: tapBar,
  );
}
