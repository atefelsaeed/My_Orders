import 'package:flutter/material.dart';

import '../components/all_restaurant.dart';
import '../components/fast_delivery.dart';

class CrepeTabView extends StatefulWidget {

  @override
  _CrepeTabViewState createState() => _CrepeTabViewState();
}

class _CrepeTabViewState extends State<CrepeTabView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            FastDelivery(),
            AllRestaurant(),
          ],
        ),
      ),
    );
  }
}
