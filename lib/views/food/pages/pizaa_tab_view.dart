import 'package:flutter/material.dart';

import '../components/all_restaurant.dart';
import '../components/fast_delivery.dart';

class PizaaTabView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text("pizza"),
            FastDelivery(),
            AllRestaurant(),
          ],
        ),
      ),
    );
  }
}
