import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/core/dio_helper.dart';
import 'package:my_order_app_v1/core/endPoint.dart';
import 'package:my_order_app_v1/views/auth/login/models/model_login.dart';
import 'package:my_order_app_v1/views/auth/login/states/login_states.dart';
import 'package:my_order_app_v1/views/home/view.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);

  IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;

  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffix =
        isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;

    emit(LoginChangePasswordVisibilityState());
  }

  late LoginModel loginModel;

  Future<void> userLogin({
    required String email,
    required String password,
    context,
  }) async {
    emit(LoginLoadingState());
    try {
      var res = await DioHelper.postData(
        url: LOGIN,
        data: {
          'email': email,
          'password': password,
        },
      );
      if(res.statusCode==200){
        print('Success${res.data}');
        navigateTo(context, HomeView());
      }else{
        print('not valid');
      }
    }catch(e){
      print('errorrrrrrrrrrrrrrrrrrrr${e}');
    }
  }
}
