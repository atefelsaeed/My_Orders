
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';

import 'package:my_order_app_v1/widgets/default_app_bar.dart';

class AboutUsView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(LocaleKeys.about_us.tr(),),
      body: Container(
        child: Text('About Us View'),
      ),
    );
  }
}
