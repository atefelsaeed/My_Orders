import 'package:flutter/material.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';

class ItemLoadMore extends StatelessWidget {
  final title;
  final double fontSize;
  final page;
  ItemLoadMore({this.title, this.fontSize = 20, this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        navigateTo(context, page);
      },
      trailing: Container(
        margin: const EdgeInsets.all(7),
        decoration: BoxDecoration(
            border: Border.all(color: defaultColor),
            borderRadius: BorderRadius.circular(15)),
        child: TextButton(
          onPressed: () {},
          child: Text(
            LocaleKeys.view_more.tr(),
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      leading: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
