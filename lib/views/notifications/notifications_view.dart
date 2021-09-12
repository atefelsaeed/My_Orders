import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';

import 'package:my_order_app_v1/widgets/default_app_bar.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';

class NotificationsView extends StatelessWidget {
  List list = [
    'Don' 't forget your voucher code!',
    'Don' 't forget your voucher code!',
    'Don' 't forget your voucher code!',
    'Don' 't forget your voucher code!',
    'Don' 't forget your voucher code!',
  ];

  List sublist = [
    'Place your 1st order using the code UXFSADW for EGY 50 discounton your first order.',
    'Place your 1st order using the code UXFSADW for EGY 50 discounton your first order.',
    'Place your 1st order using the code UXFSADW for EGY 50 discounton your first order.',
    'Place your 1st order using the code UXFSADW for EGY 50 discounton your first order.',
    'Place your 1st order using the code UXFSADW for EGY 50 discounton your first order.',
  ];

  Widget items(String value, String subTitle) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        // width: double.infinity,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.notifications),
                widthSizedBox(10),
                Container(
                  width: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${value}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      Text("${subTitle}",maxLines: 2,style: TextStyle(fontSize: 12)),

                    ],
                  ),
                ),
              ],
            ),
            Divider(color: defaultColor,),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(
        LocaleKeys.notifications.tr(),
      ),
      body: Container(
        color: Colors.white,
          child: ListView.builder(
        itemBuilder: (context,index){
          return items(list[index], sublist[index]);
        },
        itemCount: list.length,
      )),
    );
  }
}
