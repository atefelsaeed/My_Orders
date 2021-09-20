import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/widgets/default_app_bar.dart';

class InformationView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar('Information'),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
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
                  Text('2100 ratings',style: TextStyle(color: Colors.black45),)
                ],
              ),
            ),
            Divider(color: defaultColor,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.location_pin),
                  Text('Restaurant area'),
                  Spacer(),
                  Text('Al-Mokhtalat',style: TextStyle(color: Colors.black45),)
                ],
              ),
            ),
            Divider(color: defaultColor,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.watch_later_outlined),
                  Text('Opining hours'),
                  Spacer(),
                  Text('9:00Am - 2:30AM',style: TextStyle(color: Colors.black45),)
                ],
              ),
            ),
            Divider(color: defaultColor,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.payment_outlined),
                  Text('Minimum order'),
                  Spacer(),
                  Text('EGP 15.00',style: TextStyle(color: Colors.black45),)
                ],
              ),
            ),
            Divider(color: defaultColor,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.featured_play_list),
                  Text('Delivery fee'),
                  Spacer(),
                  Text('EGP 4.99',style: TextStyle(color: Colors.black45),)
                ],
              ),
            ),
            Divider(color: defaultColor,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.info),
                  Text('Pre- order'),
                  Spacer(),
                  Text('No',style: TextStyle(color: Colors.black45),)
                ],
              ),
            ),
            Divider(color: defaultColor,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.payment_rounded),
                  Text('Payment options'),
                  Spacer(),
                  Image.asset('assets/images/visa.png',width: 25,height: 25,),
                ],
              ),
            ),
            Divider(color: defaultColor,),
          ],
        ),
      ),
    );
  }
}
