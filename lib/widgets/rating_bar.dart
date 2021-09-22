import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_order_app_v1/const/style.dart';

class DefaultRatingBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  RatingBar.builder(
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
    );
  }
}
