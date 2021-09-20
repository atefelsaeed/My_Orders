import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_order_app_v1/views/home/home_view.dart';
import 'package:my_order_app_v1/widgets/default_button.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';

Widget mapFooter(context){
  return  Container(
    width: double.infinity,
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Choose location',
            style:
            TextStyle(color: Colors.grey, fontSize: 18),
          ),
          heightSizedBox(12),
          Row(
            children: [
              Icon(
                Icons.location_on,
                size: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Mansoura city',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          heightSizedBox(12),
          defaultButton(
            isUpperCase: false,
            radius: 10,
            function: () {
              navigateAndFinish(context, HomeView());
              // print(_initialLocation.toString());
            },
            text: 'Choose location',
          ),
        ],
      ),
    ),
  );
}