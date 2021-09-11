
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';

import 'package:my_order_app_v1/widgets/default_app_bar.dart';

class YourOrdersView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(LocaleKeys.your_orders.tr(),),
      body: Container(
        child: Text('your orders'),
      ),
    );
  }
}
