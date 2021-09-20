import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/views/information/information_view.dart';
import 'package:my_order_app_v1/views/reviews/reviews_view.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';

import 'components/restaurant_filter.dart';

class RestaurantView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    'assets/images/popular.png',
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
                heightSizedBox(10),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'All Restaurants',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text(
                                'Online',
                                style: TextStyle(
                                    color: defaultColor, fontSize: 12),
                              ),
                            ],
                          ),
                          heightSizedBox(10),
                          Text(
                            'Delivery :5 EGP | 20-30 mint | 1 km',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 12),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
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
                          Row(
                            children: [
                              TextButton(
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                onPressed: () {
                                  navigateTo(
                                    context,
                                    InformationView(),
                                  );
                                },
                                child: Text(
                                  'Info',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: defaultColor,
                                      fontSize: 12),
                                ),
                              ),
                              Text(
                                '|',
                                style: TextStyle(
                                    color: Colors.black26, fontSize: 12),
                              ),
                              TextButton(
                                onPressed: () {
                                  navigateTo(context, ReviewsView());
                                },
                                child: Text(
                                  'Reviews',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: defaultColor,
                                      fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.local_offer_rounded,
                      color: defaultColor,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'offer of the restaurant',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: defaultColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ),
                  ],
                ),
                DefaultTabController(
                  length: 4,
                  child: Column(
                    children: [
                      TabBar(
                          unselectedLabelColor: Colors.black54,
                          labelColor: defaultColor,
                          // isScrollable: true,
                          indicatorColor: Colors.white,
                          indicator: BoxDecoration(),
                          tabs: [
                            Tab(
                              child: Text('koshary'),
                            ),
                            Tab(
                              text: 'Sandwitch',
                            ),
                            Tab(
                              text: 'Chicken',
                            ),
                            Tab(
                              text: 'All',
                            ),
                          ]),
                      Container(
                        height: 300,
                        // color: Colors.orangeAccent,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: TabBarView(
                            children: [
                              restaurantFilter(),
                              restaurantFilter(),
                              restaurantFilter(),
                              restaurantFilter(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
