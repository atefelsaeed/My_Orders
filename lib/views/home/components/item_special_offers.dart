import 'package:flutter/material.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/views/offers/offers_screen.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';
import 'package:my_order_app_v1/widgets/rating_bar.dart';

class ItemSpecialOffers extends StatelessWidget {
  final String img;
  final String title;
  final String meal;

  const ItemSpecialOffers(
    this.img,
    this.title,
      this.meal,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Builder(
        builder: (context) => InkWell(
          onTap: () {
            navigateTo(context, OffersScreen());
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: BoxDecoration(
                    // border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(alignment: Alignment.centerRight, children: [
                    Image.network(
                      '$img',
                      width: MediaQuery.of(context).size.width / 1.8,
                      fit: BoxFit.fill,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: defaultColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        child: Text(
                          '- 10%',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                title,
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
                      meal,
                      style: TextStyle(fontSize: 10, color: Colors.black54),
                    ),
                    Text(
                      'Delivery: EGP 15.99',
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
      ),
    );
  }
}
