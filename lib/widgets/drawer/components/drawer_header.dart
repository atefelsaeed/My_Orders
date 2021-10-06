import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:my_order_app_v1/views/auth/login/login_view.dart';
import 'package:my_order_app_v1/views/cart/order_screen.dart';
import 'package:my_order_app_v1/views/settings/settings_view.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';

import '../cubit/cubitDrawer.dart';
import '../states/stateDrawer.dart';

class MyDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DrawerCubit, DrawerStates>(builder: (context, state) {
      return Container(
        height: MediaQuery.of(context).size.height / 4,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //=================cartIcon========================
            IconButton(
                onPressed: () {
                  navigateTo(context, OrderTotalScreen());
                },
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 30,
                )),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                    LocaleKeys.login.tr(),
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            Spacer(),
            //==================setting=====================
            IconButton(
              onPressed: () {
                navigateTo(
                  context,
                  BlocProvider.value(
                    value: DrawerCubit.get(context),
                    child: SettingsView(),
                  ),
                );
              },
              icon: Icon(
                Icons.settings_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
      );
    });
  }
}
