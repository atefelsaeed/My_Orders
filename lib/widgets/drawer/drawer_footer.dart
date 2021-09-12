import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';

Widget drawerFooter(){
  return Container(
    child: Column(
      children: [
        //==========================contactUs============
        Center(
          child: Text(
            LocaleKeys.contact_us.tr(),
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        heightSizedBox(15),
        Row(
          children: [
            Spacer(),
            InkWell(
              child: Image.asset('assets/images/facebook.png'),
              onTap: () {},
            ),
            widthSizedBox(15),
            InkWell(
              child: Image.asset('assets/images/instagram.png'),
              onTap: () {},
            ),
            widthSizedBox(15),
            InkWell(
              child: Image.asset('assets/images/twitter.png'),
              onTap: () {},
            ),
            Spacer(),
          ],
        )
      ],
    ),
  );
}
