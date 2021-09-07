import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Text(
            'Home',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Container(),
    );
  }
}
