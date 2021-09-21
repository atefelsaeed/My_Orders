import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/views/restaurant/restaurant_view.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';

// List<String> list = [
//   'assets/images/popular.png',
//   'assets/images/popular.png',
//   'assets/images/popular.png',
// ];


Widget popularFoodCard(String img,context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5.0),
    child: InkWell(
      onTap: (){
        navigateTo(context, RestaurantView());
      },
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Image.asset(
                'assets/images/$img',
                width: MediaQuery.of(context).size.width/1.8,
                fit: BoxFit.fill,
              ),
            ),
          ),
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
    ),
  );
}