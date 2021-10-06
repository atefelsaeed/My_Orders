import 'package:flutter/material.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:my_order_app_v1/widgets/sized_box.dart';

class ActiveTabBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.local_offer,size: 80,),
          heightSizedBox(10),
          Text(
            '${LocaleKeys.no_vouchers.tr()} \n ${LocaleKeys.available.tr()}',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,),
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
          heightSizedBox(10),
          Text('${LocaleKeys.You_can_get_vouchers_by.tr()}\n ${LocaleKeys.redeeming_your_rewards.tr()}\n ${LocaleKeys.point.tr()}',
              maxLines: 3, style: TextStyle(color: Colors.grey,fontSize: 16),textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
