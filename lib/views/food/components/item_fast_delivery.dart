import 'package:flutter/material.dart';
import 'package:my_order_app_v1/views/restaurant/restaurant_view.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';
import 'package:my_order_app_v1/widgets/rating_bar.dart';

class ItemFastDelivery extends StatelessWidget {
  final String img;
  final String restaurantName;
  final String mealName;

  const ItemFastDelivery({
    required this.img,
    required this.restaurantName,
    required this.mealName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: InkWell(
        onTap: () {
          navigateTo(context, RestaurantView());
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height / 5,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Image.network(
                  img,
                  width: MediaQuery.of(context).size.width / 1.8,
                  // height: 130,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              restaurantName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mealName,
                    style: TextStyle(fontSize: 10, color: Colors.black54),
                  ),
                  Text(
                    'Delivery: Free',
                    style: TextStyle(fontSize: 10, color: Colors.black54),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      DefaultRatingBar(),
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
    );
  }
}
