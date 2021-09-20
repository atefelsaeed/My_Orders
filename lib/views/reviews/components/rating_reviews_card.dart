import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';

Widget ratingAndReviewCard(){
  return Card(
    elevation: 3,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text('*Gannat B***',style: TextStyle(color: Colors.black45),),
              heightSizedBox(10),
              Text('Amazing'),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: RatingBar.builder(
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
        ),
      ],
    ),
  );
}