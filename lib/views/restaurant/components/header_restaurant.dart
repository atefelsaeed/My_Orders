import 'package:flutter/material.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';

import 'package:my_order_app_v1/views/information/information_view.dart';
import 'package:my_order_app_v1/views/offers/offers_screen.dart';
import 'package:my_order_app_v1/views/reviews/reviews_view.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';
import 'package:my_order_app_v1/widgets/rating_bar.dart';

class HeaderRestaurant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset(
            'assets/images/popular.png',
            height: size.height / 3.5,
            width: size.width,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Koshary Gedoo',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        LocaleKeys.online.tr(),
                        style: TextStyle(color: defaultColor, fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '${'${LocaleKeys.delivery.tr()} :5 ${LocaleKeys.egp.tr()} | 20-30 ${LocaleKeys.mint.tr()} | 1 ${LocaleKeys.km.tr()}'}',
                    style: TextStyle(color: Colors.black54, fontSize: 12),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  DefaultRatingBar(),
                  Row(
                    children: [
                      TextButton(
                        // style: TextButton.styleFrom(
                        //   padding: EdgeInsets.zero,
                        // ),
                        onPressed: () {
                          navigateTo(
                            context,
                            InformationView(),
                          );
                        },
                        child: Text(
                          LocaleKeys.info.tr(),
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: defaultColor,
                              fontSize: 12),
                        ),
                      ),
                      Text(
                        '|',
                        style: TextStyle(color: Colors.black26, fontSize: 12),
                      ),
                      TextButton(
                        onPressed: () {
                          navigateTo(context, ReviewsView());
                        },
                        child: Text(
                          LocaleKeys.reviews.tr(),
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
              onPressed: () {
                navigateTo(
                  context,
                  OffersScreen(),
                );
              },
              child: Text(
                LocaleKeys.offers_of_the_restaurant.tr(),
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: defaultColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
