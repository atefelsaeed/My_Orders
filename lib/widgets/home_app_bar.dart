import 'package:flutter/material.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/views/filtter/filtter_view.dart';
import 'package:my_order_app_v1/views/map_screen/map_screen.dart';
import 'package:my_order_app_v1/views/search/search_view.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';

homeAppBar({PreferredSizeWidget? tapBar, Color? iconColor,context}) {
  return AppBar(
    iconTheme: IconThemeData(color: iconColor),
    backgroundColor: Colors.white,
    elevation: 0,
    actions: [
      Container(
        child: Row(
          children: [
            Container(
              height: 35,
              decoration: BoxDecoration(
                  // color: defaultColor,
                  borderRadius: BorderRadius.circular(13),
                  border: Border.all(color: defaultColor)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.black54,
                    size: 20,
                  ),
                  TextButton(
                      onPressed: () {
                        navigateTo(context, SearchView());
                      },
                      child: Text(
                        'What are you locking for?',
                        style: TextStyle(fontSize: 10, color: Colors.black54),
                      )),
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    onPressed: () {navigateTo(context, FilterView());},
                    icon: Icon(
                      Icons.filter_alt_sharp,
                      color: defaultColor,
                      size: 22,
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
                size: 22,
                color: defaultColor,
              ),
            ),
            Container(
              width: 95,
              child: Builder(
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
            ),
            Icon(
              Icons.location_pin,
              color: defaultColor,
              size: 22,
            ),
          ],
        ),
      ),
    ],
    bottom: tapBar,
  );
}
