// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ar = {
  "login": "تسجيل الدخول",
  "forgot_password": "نسيت كلمة المرور؟",
  "create_an_account": "تسجيل مستخدم جديد! ",
  "email": "البريد الالكترونى",
  "password": "كلمة المرور",
  "home": "الرئيسية",
  "continue_with_email": "المتابعة بالبريد الالكترونى"
};
static const Map<String,dynamic> en = {
  "login": "Login",
  "forgot_password": "Forgot Password?",
  "create_an_account": "Create an account!",
  "email": "Email",
  "password": "Password",
  "home": "Home",
  "continue_with_email": "Continue with email"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ar": ar, "en": en};
}
