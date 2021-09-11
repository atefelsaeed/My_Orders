import 'package:flutter/material.dart';
import 'package:my_order_app_v1/widgets/default_app_bar.dart';

class Profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar('profile'),
      body: Center(child: Text('profile')),
    );
  }
}
