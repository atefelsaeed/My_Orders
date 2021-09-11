import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:my_order_app_v1/views/auth/login/cubits/login_cubit.dart';
import 'package:my_order_app_v1/views/auth/login/states/login_states.dart';
import 'package:my_order_app_v1/views/auth/reset_password/reset_password.dart';
import 'package:my_order_app_v1/views/auth/sigin_up/sign_up_view.dart';
import 'package:my_order_app_v1/views/home/home_view.dart';

import 'package:my_order_app_v1/widgets/default_button.dart';
import 'package:my_order_app_v1/widgets/default_text_form_field.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';

class LoginForm extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginStates>(
      builder: (context, state) => Form(
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
                isPassword: LoginCubit.get(context).isPassword,
                suffix: LoginCubit.get(context).suffix,
                onSubmit: (value) {
                  if (formKey.currentState!.validate()) {
                    // LoginCubit.get(context).userLogin(
                    //   email: emailController.text,
                    //   password: passwordController.text,
                    // );
                  }
                },
                suffixPressed: () {
                  LoginCubit.get(context).changePasswordVisibility();
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
                    onPressed: () {
                      navigateTo(
                          context,
                          BlocProvider.value(
                              value: LoginCubit.get(context),
                              child: ResetPassword()));
                    },
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
                    onPressed: () {
                      navigateTo(context, SignUpView());
                    },
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
          )),
    );
  }
}
