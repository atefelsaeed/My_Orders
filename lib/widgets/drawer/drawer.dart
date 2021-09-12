import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/views/auth/profile/profile.dart';
import 'package:my_order_app_v1/widgets/drawer/drawer_body.dart';
import 'package:my_order_app_v1/widgets/drawer/drawer_boxDecoration.dart';
import 'package:my_order_app_v1/views/home/cubits/home_cubit.dart';
import 'package:my_order_app_v1/views/home/home_view.dart';
import 'package:my_order_app_v1/views/home/states/home_states.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';

import 'drawer_header.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      builder: (context, state) {
        return Drawer(
          child: SafeArea(
            child: Container(
              //============decorationBackgroundColor=========================
              decoration: drawerDecoration(),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    drawerHeader(),
                // heightSizedBox(5),
                drawerBody(context),
              ]),
            ),
          ),
        );
      },
    );
  }
}
