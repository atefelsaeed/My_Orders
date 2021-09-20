import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/views/offers/offers_screen.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';

List<String> specialOffersList = [
  'assets/images/popular.png',
  'assets/images/popular.png',
  'assets/images/popular.png',
];

Widget specialOffers() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Text(
          'Special Offers',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      heightSizedBox(10),
      Container(
        height: 220,
        child: ListView.builder(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => specialOffersCard(index),
          itemCount: specialOffersList.length,
        ),
      ),
    ],
  );
}

Widget specialOffersCard(int index) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5.0),
    child: Builder(
      builder:(context)=> InkWell(
        onTap: (){
          navigateTo(context, OffersScreen());
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Image.asset(
                specialOffersList[index],
                width: 200,
                height: 130,
                fit: BoxFit.fill,
              ),
            ),
            heightSizedBox(5),
            Text(
              'Karam El-Sham',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            heightSizedBox(5),
            Container(
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shawarma , Sandwiches.',
                    style: TextStyle(fontSize: 10, color: Colors.black54),
                  ),
                  Text(
                    'Delivery: EGP 15.99',
                    style: TextStyle(fontSize: 10, color: Colors.black54),
                  ),
                  heightSizedBox(5),
                  Row(
                    children: [
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
                      ),
                      Spacer(),
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
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}