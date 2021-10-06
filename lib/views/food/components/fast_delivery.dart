import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';

import 'package:my_order_app_v1/views/food/model/fast_delivery_model.dart';

import '../widgets/item_fast_delivery.dart';

class FastDelivery extends StatelessWidget {
 final FastDeliveryModel fastDeliveryModel = FastDeliveryModel();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            LocaleKeys.fast_delivery.tr(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 3,
          margin: EdgeInsets.symmetric(vertical: 10),
          child: ListView.builder(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => ItemFastDelivery(
              img: fastDeliveryModel.fastDeliveryImages[index],
              restaurantName: fastDeliveryModel.restaurantName[index],
              mealName: fastDeliveryModel.mealName[index],
            ),
            itemCount: fastDeliveryModel.fastDeliveryImages.length,
          ),
        ),
      ],
    );
  }
}
