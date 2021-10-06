import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:my_order_app_v1/views/information/cubit/information_cubit.dart';
import 'package:my_order_app_v1/views/information/state/information_states.dart';
import 'package:my_order_app_v1/widgets/default_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:my_order_app_v1/widgets/rating_bar.dart';


class InformationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InformationCubit(),
      child: BlocConsumer<InformationCubit, InformationStates>(
        listener: (context, state) {},
        builder: (context, state) => Scaffold(
          appBar: defaultAppBar(LocaleKeys.information.tr(),),
          body: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      DefaultRatingBar(),
                      Spacer(),
                      Text(
                        '2100 ${LocaleKeys.ratings.tr()}',
                        style: TextStyle(color: Colors.black45),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: defaultColor,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.location_pin),
                      Text('${LocaleKeys.restaurant_area.tr()}'),
                      Spacer(),
                      Text(
                        'Al-Mokhtalat',
                        style: TextStyle(color: Colors.black45),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: defaultColor,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.watch_later_outlined),
                      Text(LocaleKeys.opining_hours.tr()),
                      Spacer(),
                      Text(
                        '9:00Am - 2:30AM',
                        style: TextStyle(color: Colors.black45),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: defaultColor,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.payment_outlined),
                      Text(LocaleKeys.minimum_order.tr()),
                      Spacer(),
                      Text(
                        'EGP 15.00',
                        style: TextStyle(color: Colors.black45),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: defaultColor,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.featured_play_list),
                      Text(LocaleKeys.delivery_fee.tr()),
                      Spacer(),
                      Text(
                        'EGP 4.99',
                        style: TextStyle(color: Colors.black45),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: defaultColor,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.info),
                      Text(LocaleKeys.pre_order.tr()),
                      Spacer(),
                      Text(
                        'No',
                        style: TextStyle(color: Colors.black45),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: defaultColor,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.payment_rounded),
                      Text(LocaleKeys.payment_options.tr()),
                      Spacer(),
                      Image.asset(
                        'assets/images/visa.png',
                        width: 25,
                        height: 25,
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: defaultColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
