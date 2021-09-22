import 'package:flutter/material.dart';

import 'all_restaurant.dart';
import 'fast_delivery.dart';

class CrepeTabView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            FastDelivery(),
            SizedBox(height: 10,),
            AllRestaurant(),
          ],
        ),
      ),
    );
  }
}
