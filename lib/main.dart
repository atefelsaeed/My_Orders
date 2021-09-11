import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_order_app_v1/const/style.dart';

import 'translations/codegen_loader.g.dart';
import 'views/splash/splash_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        secondaryHeaderColor: defaultColor,
        primaryColor: defaultColor,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black)
        )
      ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: SplashView(),
    );
  }
}
