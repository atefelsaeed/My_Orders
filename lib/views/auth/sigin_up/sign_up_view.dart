import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:my_order_app_v1/widgets/default_button.dart';
import 'package:my_order_app_v1/widgets/default_text_form_field.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';

import 'components/sign_up_app_bar.dart';
import 'cubits/sign_up_cubit.dart';
import 'states/sign_up_states.dart';

class SignUpView extends StatelessWidget {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var signUpFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: BlocConsumer<SignUpCubit, SignUpStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return Scaffold(
                appBar: signUpAppBar(),
                body: SingleChildScrollView(
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Form(
                        key: signUpFormKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              LocaleKeys.continue_with_email.tr(),
                            ),
                            heightSizedBox(15),

                            Column(
                              children: [
                                //===========firstName==================================
                                defaultFormField(
                                  controller: firstNameController,
                                  type: TextInputType.name,
                                  validate: (value) {},
                                  label: LocaleKeys.first_name.tr(),
                                  prefix: Icons.person,
                                ),
                                heightSizedBox(10),
                                //===========lastName==================================
                                defaultFormField(
                                  controller: lastNameController,
                                  type: TextInputType.name,
                                  validate: (value) {},
                                  label: LocaleKeys.last_name.tr(),
                                  prefix: Icons.person,
                                ),
                                heightSizedBox(10),
                                //===========email==================================
                                defaultFormField(
                                  controller: emailController,
                                  type: TextInputType.emailAddress,
                                  validate: (value) {},
                                  label: LocaleKeys.email.tr(),
                                  prefix: Icons.email,
                                ),
                                heightSizedBox(10),
                                //===========phoneNumber==================================
                                defaultFormField(
                                  controller: phoneNumberController,
                                  type: TextInputType.phone,
                                  validate: (value) {},
                                  label: LocaleKeys.phone_number.tr(),
                                  prefix: Icons.phone,
                                ),
                                heightSizedBox(10),
                                //===========password==================================
                                defaultFormField(
                                  controller: passwordController,
                                  type: TextInputType.visiblePassword,
                                  isPassword:
                                      SignUpCubit.get(context).isPassword,
                                  suffix: SignUpCubit.get(context).suffix,
                                  onSubmit: (value) {
                                    if (signUpFormKey.currentState!
                                        .validate()) {
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
                              ],
                            ),
                            // heightSizedBox(5),
                            Row(
                              children: [
                                //===============checkbox============================
                                Checkbox(
                                  activeColor: Theme.of(context).primaryColor,
                                  value: SignUpCubit.get(context).isChecked,
                                  onChanged: (value) {
                                    SignUpCubit.get(context)
                                        .changeCheckbox(value!);
                                    print(value);
                                  },
                                ),
                                Text(
                                  LocaleKeys.sign_up_checkbox_text.tr(),
                                ),
                              ],
                            ),
                            heightSizedBox(20),
                            //===================signUpButton=========================
                            defaultButton(
                              function: () {
                                if (signUpFormKey.currentState!.validate()) {
                                  showDialog(
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (ctx) {
                                      return Container(
                                        height: 200,
                                        child: AlertDialog(
                                          actions: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  //===============confirmText===============
                                                  Text(
                                                    LocaleKeys.confirm_code
                                                        .tr(),
                                                  ),
                                                  Container(
                                                    height: 200,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        //=================pinCodeTextField=========================
                                                        Center(
                                                          child:
                                                              PinCodeTextField(
                                                            keyboardType:
                                                                TextInputType
                                                                    .number,
                                                            appContext: context,
                                                            length: 4,
                                                            animationType:
                                                                AnimationType
                                                                    .fade,
                                                            pinTheme: PinTheme(
                                                              shape:
                                                                  PinCodeFieldShape
                                                                      .box,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                              fieldHeight: 50,
                                                              fieldWidth: 40,
                                                              activeFillColor:
                                                                  Colors.white,
                                                              activeColor:
                                                                  Colors.grey,
                                                            ),
                                                            animationDuration:
                                                                Duration(
                                                                    milliseconds:
                                                                        300),
                                                            enableActiveFill:
                                                                true,
                                                            onCompleted: (v) {
                                                              print(
                                                                  "Completed");
                                                            },
                                                            onChanged: (value) {
                                                              print(value);
                                                              // setState(() {
                                                              //   currentText = value;
                                                              // });
                                                            },
                                                            beforeTextPaste:
                                                                (text) {
                                                              print(
                                                                  "Allowing to paste $text");
                                                              return true;
                                                            },
                                                          ),
                                                        ),
                                                        //==================text==================
                                                        Text(LocaleKeys
                                                            .you_can_resent
                                                            .tr()),
                                                        heightSizedBox(10),
                                                        //===================confirmButton===============
                                                        defaultButton(
                                                          radius: 10,
                                                          function: () {},
                                                          text: LocaleKeys
                                                              .confirm
                                                              .tr(),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            // PinCodeTextField(appContext: context, length: 4, onChanged: onChanged)
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                  // navigateTo(context, HomeView());
                                }
                              },
                              text: ('${LocaleKeys.login.tr()}'),
                              isUpperCase: false,
                              radius: 10,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      LocaleKeys.by_creating_account_you_agree
                                          .tr(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        LocaleKeys.privacy_policy.tr(),
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            color: defaultColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      LocaleKeys.and_to_the.tr(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        // navigateTo(context, SignUpView());
                                      },
                                      child: Text(
                                        LocaleKeys.terms_of_use.tr(),
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            color: defaultColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
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
