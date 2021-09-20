import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/widgets/drawer/drawer_body.dart';
import 'package:my_order_app_v1/widgets/drawer/drawer_boxDecoration.dart';
import 'package:my_order_app_v1/views/home/cubits/home_cubit.dart';
import 'package:my_order_app_v1/views/home/states/home_states.dart';

import 'drawer_header.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      builder: (context, state) {
        return Drawer(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                //============decorationBackgroundColor=========================
                decoration: drawerDecoration(),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      drawerHeader(),
                      drawerBody(context),
                    ]),
              ),
            ),
          ),
        );
      },
    );
  }
}
