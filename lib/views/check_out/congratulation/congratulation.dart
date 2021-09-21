import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_order_app_v1/views/home/view.dart';
import 'package:my_order_app_v1/widgets/default_app_bar.dart';
import 'package:my_order_app_v1/widgets/default_button.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';

class CongratulationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(''),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/congratulation.png',
                width: 200,
                height: 200,
              ),
              heightSizedBox(20),
              Text(
                'Congratulation',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              heightSizedBox(10),
              Text(
                'You successfully made a payment\nenjoy our service',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black38),
              ),
              heightSizedBox(50),
              defaultButton(
                function: () {
                  navigateTo(
                    context,
                    HomeView(),
                  );
                },
                text: 'Go home page',
                radius: 10,
                isUpperCase: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
