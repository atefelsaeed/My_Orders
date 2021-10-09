import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/views/auth/login/login_view.dart';
import 'package:my_order_app_v1/views/home/view.dart';

import 'core/cache_helper.dart';
import 'core/dio_helper.dart';
import 'core/endPoint.dart';
import 'translations/codegen_loader.g.dart';
import 'views/splash/splash_view.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  DioHelper.init();
  // await CacheHelper.init();
  //
  // token = CacheHelper.getData(key: 'token');
  // Widget widget;
  // bool splash = CacheHelper.getData(key: 'splash');
  // if (splash != null) {
  //   if (token != null) {
  //     widget = HomeView();
  //   } else {
  //     widget = LoginView();
  //   }
  // } else {
  //   widget = SplashView();
  // }
  // //splash

  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    supportedLocales: [
      Locale('en'),
      Locale('ar'),
    ],
    path: 'assets/translations',
    assetLoader: CodegenLoader(),
    fallbackLocale: Locale('ar'),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'AGCRegular',
        secondaryHeaderColor: defaultColor,
        scaffoldBackgroundColor: Colors.white,
        primaryColor: defaultColor,
      ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: LoginView(),
    );
  }
}
