import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_order_app_v1/const/style.dart';

class Reviews extends StatelessWidget {
  final String title;
  final String rate;

  const Reviews({required this.title, required this.rate});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Text(title),
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
          Text(rate),
        ],
      ),
    );
  }
}
