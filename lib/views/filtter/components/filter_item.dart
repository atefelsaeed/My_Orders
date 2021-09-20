import 'package:flutter/material.dart';
import 'package:my_order_app_v1/const/style.dart';

Widget filterItem(String name){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 35,
      decoration: BoxDecoration(
        color: defaultColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(name,style: TextStyle(color: Colors.white),),
      ),
    ),
  );
}