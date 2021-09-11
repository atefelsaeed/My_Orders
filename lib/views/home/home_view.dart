import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:my_order_app_v1/views/home/components/drawer.dart';
import 'package:my_order_app_v1/views/home/states/home_states.dart';

import 'cubits/home_cubit.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state) {},
        builder: (context, state) => Scaffold(
          drawer: HomeDrawer(),
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Center(
              child: Text(
                LocaleKeys.home.tr(),
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          body: Container(),
        ),
      ),
    );
  }
}
