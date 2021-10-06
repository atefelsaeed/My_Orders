import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:my_order_app_v1/views/vouchers/model/model_vouchers.dart';

import 'package:my_order_app_v1/widgets/default_app_bar.dart';
import 'package:my_order_app_v1/widgets/drawer/drawer_view.dart';

class VouchersView extends StatelessWidget {
 final ModelVouchers modelVouchers = ModelVouchers();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        drawer: HomeDrawer(),
        appBar: defaultAppBar(
          LocaleKeys.voucher.tr(),
          tapBar: TabBar(
            // indicatorPadding: EdgeInsets.symmetric(horizontal: 2),
            // indicatorWeight: 0,
            labelPadding: EdgeInsets.zero,
            unselectedLabelColor: Colors.black54,
            labelColor: defaultColor,
            indicatorColor: Colors.white,
            indicator: BoxDecoration(
              border: Border.all(color: defaultColor, width: 4.5),
            ),
            tabs: [
              ...List.generate(
                modelVouchers.pages.length,
                (index) => Tab(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: .5),
                    ),
                    child: Center(
                      child: Text(
                        modelVouchers.tabNames[index].tr(),
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
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
                ...List.generate(
                  modelVouchers.pages.length,
                  (index) => modelVouchers.pages[index],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
