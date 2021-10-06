import 'package:flutter/material.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class ItemUsedProduct extends StatelessWidget {
  final index;

  const ItemUsedProduct({required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 7,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
            border: Border.all(color: defaultColor),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Icon(
              Icons.local_offer_rounded,
              color: defaultColor,
              size: 30,
            ),
            Text(
              '30% ${LocaleKeys.discount.tr()}\n ${LocaleKeys.for_any_order.tr()}',
              style: TextStyle(
                fontSize: 16,
                color: defaultColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            VerticalDivider(
              color: defaultColor,
              thickness: 1,
            ),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Text(
                  '${LocaleKeys.get_your_vouchers.tr()}',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  '${LocaleKeys.write_the_code.tr()} #252545',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
