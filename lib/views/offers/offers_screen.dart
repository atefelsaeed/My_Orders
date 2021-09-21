import 'package:flutter/material.dart';
import 'package:my_order_app_v1/widgets/default_app_bar.dart';
import 'package:my_order_app_v1/widgets/drawer/drawer.dart';

import 'components/offers_card.dart';

class OffersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
      appBar: defaultAppBar('Offers'),
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
