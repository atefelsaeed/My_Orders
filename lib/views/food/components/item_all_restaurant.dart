import 'package:flutter/material.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/views/restaurant/restaurant_view.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';
import 'package:my_order_app_v1/widgets/rating_bar.dart';

class ItemAllRestaurant extends StatelessWidget {

  final String img;
  final String restaurantName;

  const ItemAllRestaurant({ required this.img, required this.restaurantName});

  @override
  Widget build(BuildContext context) {
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
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  img,
                  width: 120,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 5,),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurantName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10,),
                    SizedBox(height: 10,),
                    Text(
                      'Shawarma , Sandwiches.',
                      style: TextStyle(fontSize: 10, color: Colors.black),
                    ),
                    SizedBox(height: 10,),
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
                    DefaultRatingBar(),
                    SizedBox(height: 10,),
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
}
