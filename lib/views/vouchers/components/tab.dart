import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget tab(String title) {
  return Container(
    height: 50,
    width: 100,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey),
    ),
    child: Center(
      child: Text(
        title,
        style: TextStyle(fontSize: 18),
      ),
    ),
  );
}
