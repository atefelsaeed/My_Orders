import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:my_order_app_v1/widgets/drawer/drawer.dart';
import 'package:my_order_app_v1/views/home/states/home_states.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';

import 'components/carousel_slider.dart';
import 'components/popular_food.dart';
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
            iconTheme: IconThemeData(color: defaultColor),
            backgroundColor: Colors.white,
            elevation: 0,
            actions: [
              // Container(
              //   height: 30,
              //   decoration: BoxDecoration(
              //     color: defaultColor,
              //       // borderRadius: BorderRadius.circular(20),
              //       // border:Border.all(color: defaultColor)
              //       ),
              // ),
              IconButton(onPressed: () {}, icon: Icon(Icons.whatshot)),
              Center(
                  child: Text(
                'EL-GALLA Street',
                style: TextStyle(color: Colors.black),
              )),
              Icon(
                Icons.location_pin,
                color: defaultColor,
              ),
            ],
          ),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                carouselSlider(),
                heightSizedBox(10),
                popularFood(),
                heightSizedBox(10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
