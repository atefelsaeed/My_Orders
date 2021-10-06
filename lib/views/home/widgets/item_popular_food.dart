import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:my_order_app_v1/views/restaurant/restaurant_view.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';
import 'package:my_order_app_v1/widgets/rating_bar.dart';

class ItemPopularFood extends StatelessWidget {
  final String img;
  final String foodName;
  final String foodCost;

  const ItemPopularFood(
    this.img,
    this.foodName,
    this.foodCost,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: InkWell(
        onTap: () {
          navigateTo(context, RestaurantView());
        },
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Image.asset(
                  'assets/images/$img',
                  width: MediaQuery.of(context).size.width / 1.8,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              foodName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 200,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        foodCost,
                        style: TextStyle(fontSize: 10, color: Colors.black54),
                      ),
                      SizedBox(height: 5,),
                      DefaultRatingBar(),
                    ],
                  ),
                  Spacer(), //xx
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
}
