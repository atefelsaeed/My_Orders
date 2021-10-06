import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:my_order_app_v1/views/cart/order_screen.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';
import 'package:easy_localization/easy_localization.dart';


class AddToCartButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: defaultColor, borderRadius: BorderRadius.circular(10)),
      child: Builder(
        builder: (context) => MaterialButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
              LocaleKeys.add_to_cart.tr(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              )
            ],
          ),
          onPressed: () {
            navigateTo(context, OrderTotalScreen());
          },
        ),
      ),
    );
  }
}