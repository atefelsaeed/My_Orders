import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:my_order_app_v1/widgets/drawer/cubit/cubitDrawer.dart';
import 'package:my_order_app_v1/widgets/drawer/states/stateDrawer.dart';
import 'package:my_order_app_v1/widgets/drawer/widgets/item_web_view.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';

class DrawerFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DrawerCubit, DrawerStates>(
      listener: (context, state) {},
      builder: (context, state) => Container(
        margin: EdgeInsets.only(bottom: 50, top: 20),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Text(
                LocaleKeys.contact_us.tr(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Spacer(),
                InkWell(
                  child: Image.asset('assets/images/facebook.png'),
                  onTap: () {
                    navigateTo(
                        context,
                        ItemWebView(
                          initialUrl: 'https://www.facebook.com/',
                          title: 'FaceBook',
                        ));
                  },
                ),
                Spacer(),
                InkWell(
                  child: Image.asset('assets/images/instagram.png'),
                  onTap: () {
                    navigateTo(
                        context,
                        ItemWebView(
                          initialUrl: 'https://www.instagram.com/',
                          title: 'Instagram',
                        ));
                  },
                ),
                Spacer(),
                InkWell(
                  child: Image.asset('assets/images/twitter.png'),
                  onTap: () {
                    navigateTo(
                        context,
                        ItemWebView(
                          initialUrl: 'https://twitter.com/',
                          title: 'Twitter',
                        ));
                  },
                ),
                Spacer(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
