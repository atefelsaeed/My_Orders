import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/sign_up_app_bar.dart';
import 'components/sign_up_form.dart';
import 'cubits/sign_up_cubit.dart';
import 'states/sign_up_states.dart';

class SignUpView extends StatelessWidget {
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
                    padding: EdgeInsets.all(8),
                    child: SignUpForm(),
                  ),
                ));
          }),
    );
  }
}
