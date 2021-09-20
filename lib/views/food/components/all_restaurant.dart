import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/views/restaurant/restaurant_view.dart';
import 'package:my_order_app_v1/widgets/default_button.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';

List<String> allRestaurantList = [
  'assets/images/popular.png',
  'assets/images/popular.png',
  'assets/images/popular.png',
  'assets/images/popular.png',
];

Widget allRestaurant() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Text(
          'All Restaurants',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      heightSizedBox(10),
      ListView.builder(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        // scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => allRestaurantCard(
          context,
          index: index,
          restaurantName: 'Karam El-Sham',
        ),
        itemCount: allRestaurantList.length,
      ),
      heightSizedBox(20),
      defaultButton(function: () {}, text: 'View all restaurants', radius: 10),
      heightSizedBox(20),
    ],
  );
}

Widget allRestaurantCard(context,{int? index, String? restaurantName}) {
  return InkWell(
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: defaultColor)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
              child: Image.asset(
                allRestaurantList[index!],
                width: 120,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            widthSizedBox(5),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    restaurantName!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  heightSizedBox(10),
                  Text(
                    'Shawarma , Sandwiches.',
                    style: TextStyle(fontSize: 10, color: Colors.black),
                  ),
                  heightSizedBox(5),
                  Text(
                    'Online',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, right: 5),
              child: Column(
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
                  heightSizedBox(10),
                  Row(
                    children: [
                      Icon(
                        Icons.watch_later_outlined,
                        color: Colors.black87,
                        size: 15,
                      ),
                      Text(
                        '20_30 mints',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    onTap: (){
      navigateTo(context, RestaurantView());
    },
  );
}
