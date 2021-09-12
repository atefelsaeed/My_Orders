import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/views/auth/login/login_view.dart';
import 'package:my_order_app_v1/views/home/cubits/home_cubit.dart';
import 'package:my_order_app_v1/views/home/states/home_states.dart';
import 'package:my_order_app_v1/views/settings/settings_view.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';

Widget drawerHeader() {
  return BlocBuilder<HomeCubit, HomeStates>(builder: (context, state) {
    return Container(
      height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //=================cartIcon========================
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
                size: 25,
              )),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: defaultColor,
                foregroundColor: Colors.white,
                radius: 30,
                child: Stack(children: [
                  Image.asset('assets/images/person.png'),
                  Center(
                      child: Icon(
                    Icons.person_outline,
                    size: 30,
                  )),
                ]),
              ),
              //=================login==================
              TextButton(
                  onPressed: () {
                    navigateTo(context, LoginView());
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ))
            ],
          ),
          Spacer(),
          //==================setting=====================
          IconButton(
              onPressed: () {
                navigateTo(
                  context,
                  BlocProvider.value(
                    value: HomeCubit.get(context),
                    child: SettingsView(),
                  ),
                );
              },
              icon: Icon(
                Icons.settings_outlined,
                color: Colors.white,
                size: 25,
              )),
        ],
      ),
    );
  });
}
