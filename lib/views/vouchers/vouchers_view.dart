import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';

import 'package:my_order_app_v1/widgets/default_app_bar.dart';

import 'components/active_tab_body.dart';
import 'components/expired_tab_body.dart';
import 'components/tab.dart';
import 'components/used_tab_body.dart';

class VouchersView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: defaultAppBar(
          LocaleKeys.voucher.tr(),
          tapBar: TabBar(
            indicatorPadding: EdgeInsets.zero,
            // isScrollable: true,
            unselectedLabelColor: Colors.black54,
            labelColor: defaultColor,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                child: tab('Active'),
              ),
              Tab(
                child: tab('Used'),
              ),
              Tab(
                child: tab('Expired'),
              ),
            ],
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: TabBarView(
              children: [
                ActiveTabBody(),
                UsedTabBody(),
                ExpiredTabBody(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
