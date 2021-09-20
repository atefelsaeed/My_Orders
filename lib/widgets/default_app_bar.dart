import 'package:flutter/material.dart';

defaultAppBar(String title, {PreferredSizeWidget? tapBar,Color? iconColor}) => AppBar(
      iconTheme: IconThemeData(color: iconColor),
      backgroundColor: Colors.white,
      elevation: 0,
      title: Center(
        child: Text(
          title,
          style: TextStyle(color: Colors.black),
        ),
      ),
      bottom: tapBar,
    );
