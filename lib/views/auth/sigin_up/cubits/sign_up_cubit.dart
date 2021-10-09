import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/core/dio_helper.dart';
import 'package:my_order_app_v1/core/endPoint.dart';
import 'package:my_order_app_v1/views/auth/sigin_up/states/sign_up_states.dart';
import 'package:my_order_app_v1/views/home/view.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';

class SignUpCubit extends Cubit<SignUpStates> {
  SignUpCubit() : super(SignUpInitialState());

  static SignUpCubit get(context) => BlocProvider.of(context);

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;
  bool isChecked = false;

  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffix =
        isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;

    emit(SignUpChangePasswordVisibilityState());
  }

  void changeCheckbox(bool value) {
    isChecked = value;
    emit(SignUpChangeCheckboxPasswordVisibilityState());
  }

  Future<void> userSignUp({
    required String firstName,
    required String lastName,
    required String email,
    required String phone,
    required String password,
    required String passwordConfirmation,
    context,
  }) async {
    emit(SignUpLoadingState());

    try {
      var res = await DioHelper.postData(
        url: REGISTER,
        data: {
          'first_name': firstName,
          'last_name': lastName,
          'email': email,
          'phone': phone,
          'password': password,
          'password_confirmation': passwordConfirmation,
          "area_id": 1,
        },
      );
      if (res.statusCode == 200) {
        print('Success${res.data}');
        navigateTo(context, HomeView());
      } else {
        print('not valid');
      }
    } catch (e) {
      print('errorrrrrrrrrrrrrrrrrrrr${e}');
    }
  }
}
