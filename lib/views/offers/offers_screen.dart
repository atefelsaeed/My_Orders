import 'package:flutter/material.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:my_order_app_v1/widgets/default_app_bar.dart';
import 'package:my_order_app_v1/widgets/drawer/drawer_view.dart';

import 'components/offers_card.dart';

class OffersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
      appBar: defaultAppBar(LocaleKeys.offers.tr(),),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Column(
            children: [
              OffersCard(),
              SizedBox(
                height: 10,
              ),
            ],
          );
        },
        itemCount: 10,
      ),
    );
  }
}
