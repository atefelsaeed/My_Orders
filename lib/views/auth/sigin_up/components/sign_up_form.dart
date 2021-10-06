import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:my_order_app_v1/views/auth/sigin_up/cubits/sign_up_cubit.dart';
import 'package:my_order_app_v1/views/auth/sigin_up/states/sign_up_states.dart';
import 'package:my_order_app_v1/widgets/default_button.dart';
import 'package:my_order_app_v1/widgets/default_text_form_field.dart';

import 'pin_code_alert_dialog.dart';

class SignUpForm extends StatelessWidget {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var signUpFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Form(
            key: signUpFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  LocaleKeys.continue_with_email.tr(),
                ),
                SizedBox(
                  height: 15,
                ),
                //===========firstName==================================
                defaultFormField(
                  controller: firstNameController,
                  type: TextInputType.name,
                  validate: () {
                    if (firstNameController.text.length < 3) {
                      return "name is less than 3";
                    }
                  },
                  label: LocaleKeys.first_name.tr(),
                  prefix: Icons.person,
                ),
                SizedBox(
                  height: 10,
                ),
                //===========lastName==================================
                defaultFormField(
                  controller: lastNameController,
                  type: TextInputType.name,
                  validate: () {
                    if (lastNameController.text.length < 3) {
                      return "name is less than 3";
                    }
                  },
                  label: LocaleKeys.last_name.tr(),
                  prefix: Icons.person,
                ),
                SizedBox(
                  height: 10,
                ),
                //===========email==================================
                defaultFormField(
                  controller: emailController,
                  type: TextInputType.emailAddress,
                  validate: () {},
                  label: LocaleKeys.email.tr(),
                  prefix: Icons.email,
                ),
                SizedBox(
                  height: 10,
                ),
                //===========phoneNumber==================================
                defaultFormField(
                  controller: phoneNumberController,
                  type: TextInputType.phone,
                  validate: () {},
                  label: LocaleKeys.phone_number.tr(),
                  prefix: Icons.phone,
                ),
                SizedBox(
                  height: 10,
                ),
                //===========password==================================
                defaultFormField(
                  controller: passwordController,
                  type: TextInputType.visiblePassword,
                  isPassword: SignUpCubit.get(context).isPassword,
                  suffix: SignUpCubit.get(context).suffix,
                  onSubmit: (value) {
                    if (signUpFormKey.currentState!.validate()) {
                      // LoginCubit.get(context).userLogin(
                      //   email: emailController.text,
                      //   password: passwordController.text,
                      // );
                    }
                  },
                  suffixPressed: () {
                    SignUpCubit.get(context).changePasswordVisibility();
                  },
                  validate: () {
                    if (passwordController.text.length < 3) {
                      return "password is less than 7";
                    }
                  },
                  label: LocaleKeys.password.tr(),
                  prefix: Icons.lock_sharp,
                ),
                // heightSizedBox(5),
                Row(
                  children: [
                    //===============checkbox============================
                    Checkbox(
                      activeColor: Theme.of(context).primaryColor,
                      value: SignUpCubit.get(context).isChecked,
                      onChanged: (value) {
                        SignUpCubit.get(context).changeCheckbox(value!);
                        print(value);
                      },
                    ),
                    Text(
                      LocaleKeys.sign_up_checkbox_text.tr(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                //===================signUpButton=========================
                defaultButton(
                  function: () {
                    if (signUpFormKey.currentState!.validate()) {
                      showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (ctx) {
                          return Container(
                            // height: MediaQuery.of(context).size.height/2,
                            child: PinCodeAlertDialog(),
                          );
                        },
                      );
                    }
                  },
                  text: ('${LocaleKeys.sign_up.tr()}'),
                  isUpperCase: false,
                  radius: 10,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  ' ${LocaleKeys.by_creating_account_you_agree.tr()},',
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    '${LocaleKeys.privacy_policy.tr()} & ${LocaleKeys.terms_of_use.tr()}',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: defaultColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
