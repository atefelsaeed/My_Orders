import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/views/reviews/components/reviews.dart';
import 'package:my_order_app_v1/widgets/default_app_bar.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';

import 'components/rating_reviews_card.dart';

class ReviewsView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar('Reviews'),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
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
                  Spacer(),
                  Text('Based on 2100 review',style: TextStyle(color: Colors.black45),)
                ],
              ),
              heightSizedBox(10),
              reviews(
                title: 'Order packaging',
                rate: '4.0',
              ),
              heightSizedBox(10),
              reviews(
                title: 'Value for money',
                rate: '4.0',
              ),
              heightSizedBox(10),
              reviews(
                title: 'Delivery time',
                rate: '4.5',
              ),
              heightSizedBox(10),
              reviews(
                title: 'Quality of food',
                rate: '4.0',
              ),
              heightSizedBox(20),
              Text('Rating & Reviews',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ratingAndReviewCard(),
              heightSizedBox(10),
              ratingAndReviewCard(),
              heightSizedBox(10),
              ratingAndReviewCard(),
              heightSizedBox(10),
              ratingAndReviewCard(),
              heightSizedBox(10),
              TextButton(
                onPressed: (){},
                child: Text('Read more reviews',style: TextStyle(
                  color: defaultColor,fontSize: 16
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
