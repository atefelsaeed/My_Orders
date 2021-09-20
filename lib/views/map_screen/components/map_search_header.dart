import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_order_app_v1/const/style.dart';

TextEditingController search = TextEditingController();

Widget mapSearchHeader() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10),
    height: 40,
    child: TextField(
      controller: search,
      decoration: InputDecoration(
        focusColor: defaultColor,
        border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: defaultColor, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: defaultColor, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: Icon(Icons.search),
        hintText: 'What are you looking for?',
        hintStyle: TextStyle(fontSize: 12),
      ),
    ),
  );
}
