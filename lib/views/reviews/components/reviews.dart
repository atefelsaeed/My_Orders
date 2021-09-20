import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_order_app_v1/const/style.dart';

Widget reviews({String? title,String?rate}){
  return  Row(
    children: [
      Text(title!),
      Spacer(),
      RatingBar.builder(
        itemSize: 15,
        initialRating: 5,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        itemPadding: EdgeInsets.symmetric(horizontal: 2.5),
        itemBuilder: (context, _) => Icon(
          Icons.star,
          color: defaultColor,
        ),
        onRatingUpdate: (rating) {
          print(rating);
        },
      ),
      Text(rate!),
    ],
  );
}