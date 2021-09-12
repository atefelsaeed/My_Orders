import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_order_app_v1/const/style.dart';

List list = ['assets/images/popular.png'];

Widget card(int index) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Image.asset(
          list[index],
        ),
      ),
    ],
  );
}

Widget popularFood() {
  return Container(
    child: Column(
      children: [
        Row(
          children: [
            Text(
              'Popular food',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Spacer(),
            FlatButton(
              height: 40,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(
                    color: defaultColor,
                  )),
              child: Text(
                'View more',
              ),
              onPressed: () {},
            ),
          ],
        ),
        // ListView.builder(
        //   itemBuilder: (context, index) => list[index],
        //   itemCount: list.length,
        // )
      ],
    ),
  );
}
