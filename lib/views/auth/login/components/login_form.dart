import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:my_order_app_v1/views/auth/login/cubits/login_cubit.dart';
import 'package:my_order_app_v1/views/auth/login/states/login_states.dart';
import 'package:my_order_app_v1/views/auth/reset_password/reset_password.dart';
import 'package:my_order_app_v1/views/auth/sigin_up/sign_up_view.dart';
import 'package:my_order_app_v1/views/home/view.dart';

import 'package:my_order_app_v1/widgets/default_button.dart';
import 'package:my_order_app_v1/widgets/default_text_form_field.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';

class LoginForm extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKeyLogin = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginStates>(
      builder: (context, state) => Form(
        key: formKeyLogin,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(LocaleKeys.continue_with_email.tr()),
            SizedBox(
              height: 15,
            ),
            //=============email==============
            defaultFormField(
              controller: emailController,
              type: TextInputType.emailAddress,
              validate: () {
                if(emailController.text.length<7)
                  {
                    return "email is less than 7";
                  }
              },
              label: LocaleKeys.email.tr(),
              prefix: Icons.email,
            ),
            SizedBox(
              height: 15,
            ),
            //===========password=================
            defaultFormField(
              controller: passwordController,
              type: TextInputType.visiblePassword,
              isPassword: LoginCubit.get(context).isPassword,
              suffix: LoginCubit.get(context).suffix,
              onSubmit: (value) {
                if (formKeyLogin.currentState!.validate()) {
                  // LoginCubit.get(context).userLogin(
                  //   email: emailController.text,
                  //   password: passwordController.text,
                  // );
                }
              },
              suffixPressed: () {
                LoginCubit.get(context).changePasswordVisibility();
              },
              validate: () {
                if(passwordController.text.length<7)
                {
                  return "password is less than 7";
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
            SizedBox(height: 20,),
            defaultButton(
              function: () {
                if (formKeyLogin.currentState!.validate()) {
                  print('User login Success');
                  navigateTo(context, HomeView());
                }else{
                  print('User login Error');
                }
              },
              text: LocaleKeys.login.tr(),
              isUpperCase: false,
              radius: 10,
            ),
          ],
        ),
      ),
    );
  }
}
