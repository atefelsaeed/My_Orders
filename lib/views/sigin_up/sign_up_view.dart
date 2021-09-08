import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:my_order_app_v1/views/home/home_view.dart';
import 'package:my_order_app_v1/views/login/components/login_app_bar.dart';
import 'package:my_order_app_v1/widgets/default_button.dart';
import 'package:my_order_app_v1/widgets/default_text_form_field.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';

import 'cubits/sign_up_cubit.dart';
import 'states/sign_up_states.dart';

class SiginUpView extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: BlocConsumer<SignUpCubit, SignUpStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return Scaffold(
                appBar: loginAppBar(),
                body: SingleChildScrollView(
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(LocaleKeys.continue_with_email.tr()),
                            heightSizedBox(15),
                            defaultFormField(
                              controller: emailController,
                              type: TextInputType.emailAddress,
                              validate: (value) {},
                              label: LocaleKeys.email.tr(),
                              prefix: Icons.email,
                            ),
                            heightSizedBox(10),
                            defaultFormField(
                              controller: passwordController,
                              type: TextInputType.visiblePassword,
                              isPassword: SignUpCubit.get(context).isPassword,
                              suffix: SignUpCubit.get(context).suffix,
                              onSubmit: (value) {
                                if (formKey.currentState!.validate()) {
                                  // LoginCubit.get(context).userLogin(
                                  //   email: emailController.text,
                                  //   password: passwordController.text,
                                  // );
                                }
                              },
                              suffixPressed: () {
                                SignUpCubit.get(context)
                                    .changePasswordVisibility();
                              },
                              validate: (String value) {
                                if (value.isEmpty) {
                                  return 'password is too short';
                                }
                              },
                              label: LocaleKeys.password.tr(),
                              prefix: Icons.lock_sharp,
                            ),
                            // heightSizedBox(5),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    LocaleKeys.forgot_password.tr(),
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    LocaleKeys.create_an_account.tr(),
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: defaultColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            heightSizedBox(20),
                            defaultButton(
                              function: () {
                                if (formKey.currentState!.validate()) {
                                  navigateTo(context, HomeView());
                                }
                              },
                              text: LocaleKeys.login.tr(),
                              isUpperCase: false,
                              radius: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ));
          }),
    );
  }
}
