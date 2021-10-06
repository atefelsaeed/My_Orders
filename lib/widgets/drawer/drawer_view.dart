import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/widgets/drawer/cubit/cubitDrawer.dart';
import 'package:my_order_app_v1/widgets/drawer/components/drawer_body.dart';
import 'package:my_order_app_v1/widgets/drawer/components/drawer_boxDecoration.dart';

import 'components/drawer_footer.dart';
import 'components/drawer_header.dart';
import 'states/stateDrawer.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:  (context)=>DrawerCubit(),
      child: BlocBuilder<DrawerCubit, DrawerStates>(
      builder: (context, state) {
        return Drawer(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                decoration: drawerDecoration(),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyDrawerHeader(),
                      DrawerBody(),
                      DrawerFooter(),
                    ]),
              ),
            ),
          ),
        );
      },
    ));
  }
}
