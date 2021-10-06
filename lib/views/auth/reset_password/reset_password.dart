import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/views/auth/forgotten_password/forgotten_password.dart';
import 'package:my_order_app_v1/views/auth/login/cubits/login_cubit.dart';
import 'package:my_order_app_v1/views/auth/login/states/login_states.dart';

import 'package:my_order_app_v1/widgets/default_app_bar.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:my_order_app_v1/widgets/default_button.dart';
import 'package:my_order_app_v1/widgets/default_text_form_field.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';

class ResetPassword extends StatelessWidget {
  TextEditingController confirmNewPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  var resetPassFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(
        LocaleKeys.reset_password.tr(),
      ),
      body: BlocBuilder<LoginCubit, LoginStates>(builder: (context, state) {
        return SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              key: resetPassFormKey,
              child: Column(
                children: [
                  heightSizedBox(20),
                  defaultFormField(
                    controller: newPasswordController,
                    type: TextInputType.visiblePassword,
                    isPassword: LoginCubit.get(context).isPassword,
                    onSubmit: (value) {
                      if (resetPassFormKey.currentState!.validate()) {
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
                      if (newPasswordController.text.length < 7) {
                        return 'password is less than 7';
                      }
                    },
                    label: LocaleKeys.new_password.tr(),
                    prefix: Icons.lock_sharp,
                  ),
                  heightSizedBox(10),
                  defaultFormField(
                    controller: confirmNewPasswordController,
                    type: TextInputType.visiblePassword,
                    isPassword: LoginCubit.get(context).isPassword,
                    suffix: LoginCubit.get(context).suffix,
                    onSubmit: (value) {
                      if (resetPassFormKey.currentState!.validate()) {
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
                      if (confirmNewPasswordController.text != newPasswordController.text) {
                        return 'Not Match';
                      }
                      return null;
                    },
                    label: LocaleKeys.confirm_new_password.tr(),
                    prefix: Icons.lock_sharp,
                  ),
                  heightSizedBox(30),
                  defaultButton(
                    radius: 10,
                    function: () {
                      if (resetPassFormKey.currentState!.validate()) {
                        navigateTo(
                            context,
                            BlocProvider.value(
                                value: LoginCubit.get(context),
                                child: ForgottenPassword()));
                      }
                    },
                    text: LocaleKeys.confirm.tr(),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
