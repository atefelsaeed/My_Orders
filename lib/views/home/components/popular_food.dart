import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';

List<String> list = [
  'assets/images/popular.png',
  'assets/images/popular.png',
  'assets/images/popular.png',
];

Widget popularFood() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Row(
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
      ),
      heightSizedBox(10),
      Container(
        height: 200,
        child: ListView.builder(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => popularFoodCard(index),
          itemCount: list.length,
        ),
      ),
    ],
  );
}

Widget popularFoodCard(int index) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Image.asset(
            list[index],
            width: 200,
            height: 130,
            fit: BoxFit.fill,
          ),
        ),
        heightSizedBox(5),
        Text(
          'Ranch Effect Sandwich',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        heightSizedBox(5),
        Container(
          width: 200,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Delivery: EGP 15.99',
                    style: TextStyle(fontSize: 10, color: Colors.black54),
                  ),
                  heightSizedBox(5),
                  RatingBar.builder(
                    itemSize: 10,
                    initialRating: 5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: defaultColor,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  )
                ],
              ),
              Spacer(),//xx
              Icon(
                Icons.watch_later_outlined,
                color: Colors.black54,
              ),
              Text(
                'Within 24 mints',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}