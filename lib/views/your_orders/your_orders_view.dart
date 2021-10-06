
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';

import 'package:my_order_app_v1/widgets/default_app_bar.dart';
import 'package:my_order_app_v1/widgets/drawer/drawer_view.dart';

class YourOrdersView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        drawer: HomeDrawer(),
        appBar: defaultAppBar(
          LocaleKeys.voucher.tr(),
          tapBar: TabBar(
            indicatorPadding: EdgeInsets.zero,
            unselectedLabelColor: Colors.black54,
            labelColor: defaultColor,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                text: 'Old Orders',
                // child: Container(
                //   decoration: BoxDecoration(
                //     borderRadius:BorderRadius.circular(20) ,
                //     color: defaultColor,
                //   ),
                //   child: Text('Old Orders'),
                // ),
                // child: tab('Active'),
              ),
              Tab(
                text: 'Recent Orders',
                // child: tab('Used'),
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

              ],
            ),
          ),
        ),
      ),
    );
  }
}
