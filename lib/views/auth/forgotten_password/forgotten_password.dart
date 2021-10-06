import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/views/auth/login/cubits/login_cubit.dart';
import 'package:my_order_app_v1/views/auth/login/states/login_states.dart';
import 'package:my_order_app_v1/views/home/view.dart';
import 'package:my_order_app_v1/widgets/default_app_bar.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:my_order_app_v1/widgets/default_button.dart';
import 'package:my_order_app_v1/widgets/default_text_form_field.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';

class ForgottenPassword extends StatelessWidget {
  final TextEditingController forgottenPassEmailController =
      TextEditingController();
  var forgottenPassFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: defaultAppBar(
          LocaleKeys.forgotten_password.tr(),
        ),
        body: BlocBuilder<LoginCubit, LoginStates>(builder: (context, state) {
          return SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Form(
                key: forgottenPassFormKey,
                child: Column(
                  //===========email==================================
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    defaultFormField(
                      controller: forgottenPassEmailController,
                      type: TextInputType.emailAddress,
                      validate: () {
                        if (forgottenPassEmailController.text.length < 7) {
                          return 'email is less than 7';
                        }
                      },
                      label: LocaleKeys.email.tr(),
                      prefix: Icons.email,
                    ),
                    heightSizedBox(20),
                    defaultButton(
                      radius: 10,
                      function: () {
                        if (forgottenPassFormKey.currentState!.validate()) {
                          navigateTo(context, HomeView());
                        }
                      },
                      text: LocaleKeys.reset_your_password.tr(),
                    ),
                  ],
                ),
              ),
            ),
          );
        }));
  }
}
