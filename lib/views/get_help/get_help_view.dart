import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';

import 'package:my_order_app_v1/widgets/default_app_bar.dart';
import 'package:my_order_app_v1/widgets/drawer/drawer.dart';

class GetHelpView extends StatelessWidget {
  List list = [
    'I need help with a current order',
    'I need help with a current order',
    'I need help with a current order',
    'I need help with a current order',
    'I need help with a current order'
  ];

  Widget items(String value) {
    return Container(
      height: 50,
      width: double.infinity,
      child: Row(
        children: [
          Text("${value}"),
          Spacer(),
          Icon(Icons.arrow_forward_ios_rounded),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
      appBar: defaultAppBar(
        LocaleKeys.get_help.tr(),
      ),
      body: SingleChildScrollView(

        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              Text('Hi, Ahmed! How can we help?'),
              ListView.builder(
                shrinkWrap:true,
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ExpansionTile(
                          textColor: defaultColor,
                          iconColor: defaultColor,
                          title: Text(list[index]),
                          children: const <Widget>[
                            ListTile(title: Text('This is tile number 2')),
                          ]),
                      // Divider(color: defaultColor,)
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
