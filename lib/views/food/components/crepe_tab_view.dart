import 'package:flutter/material.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';

import 'all_restaurant.dart';
import 'fast_delivery.dart';

class CrepeTabView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            fastDelivery(),
            heightSizedBox(10),
            allRestaurant(),
          ],
        ),
      ),
    );
  }
}
