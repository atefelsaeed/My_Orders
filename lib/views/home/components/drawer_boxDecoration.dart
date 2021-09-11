import 'package:flutter/material.dart';
import 'package:my_order_app_v1/const/style.dart';

Decoration drawerDecoration() => BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
          defaultColor,
          secondaryColor,
        ]));
