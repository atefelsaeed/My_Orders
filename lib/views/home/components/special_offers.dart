import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:my_order_app_v1/views/home/components/item_special_offers.dart';
import 'package:my_order_app_v1/views/home/models/special_offers_model.dart';

SpecialOffersModel specialOffersModel = SpecialOffersModel();

class SpecialOffers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      child: ListView.builder(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => ItemSpecialOffers(
          specialOffersModel.specialOffersImages[index],
          specialOffersModel.specialOffersName[index],
          specialOffersModel.specialOffersMeal[index],
        ),
        itemCount: specialOffersModel.specialOffersImages.length,
      ),
    );
  }
}
