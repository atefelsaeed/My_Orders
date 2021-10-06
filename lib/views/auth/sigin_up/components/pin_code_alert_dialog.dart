import 'package:flutter/material.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:my_order_app_v1/views/home/view.dart';
import 'package:my_order_app_v1/widgets/default_button.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';

import 'pin_code_field.dart';
import 'package:easy_localization/easy_localization.dart';

class PinCodeAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      AlertDialog(
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //===============confirmText===============
              Text(
                LocaleKeys.confirm_code.tr(),
              ),
              Container(
                height:  MediaQuery.of(context).size.height/3.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //=================pinCodeTextField=========================
                    Center(
                      child: PinCodeField(),
                    ),
                    //==================text==================
                    Text(LocaleKeys.you_can_resent.tr()),
                    SizedBox(
                      height: 10,
                    ),
                    //===================confirmButton===============
                    defaultButton(
                      radius: 10,
                      function: () {
                        navigateTo(context, HomeView());
                      },
                      text: LocaleKeys.confirm.tr(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
