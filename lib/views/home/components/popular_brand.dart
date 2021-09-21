import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';

List<String> brandList = [
  'assets/images/gad.png',
  'assets/images/gad.png',
  'assets/images/gad.png',
];

Widget popularBrand() {
  return Column(
    children: [
      Container(
        height: 150,
        child: ListView.builder(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => popularBrandCard(index),
          itemCount: brandList.length,
        ),
      ),
    ],
  );
}

Widget popularBrandCard(int index) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Image.asset(
            brandList[index],
            width: 150,
            height: 100,
            fit: BoxFit.fill,
          ),
        ),
        heightSizedBox(5),
        Text(
          'Gad',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    ),
  );
}
