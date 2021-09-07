import 'package:flutter/material.dart';
import 'package:my_order_app_v1/const/style.dart';

import 'views/splash/splash_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: defaultColor,
      ),
      home: SplashView(),
    );
  }
}