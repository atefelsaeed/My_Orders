import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/views/restaurant/cubits/restaurant_cubit.dart';
import 'package:my_order_app_v1/views/restaurant/models/model_restaurant.dart';
import 'package:my_order_app_v1/views/restaurant/states/restaurant_states.dart';

import 'components/header_restaurant.dart';

class RestaurantView extends StatelessWidget {
  ModelRestaurant modelRestaurant = ModelRestaurant();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RestaurantCubit(),
      child: BlocConsumer<RestaurantCubit, RestaurantStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                iconTheme: IconThemeData(color: Colors.black),
              ),
              body: Container(
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        HeaderRestaurant(),
                        DefaultTabController(
                          length: 4,
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 2.0,
                                      offset: Offset(
                                        -2.0, // horizontal, move right 10
                                        4.0, // vertical, move down 10
                                      ),
                                    )
                                  ],
                                ),
                                child: TabBar(
                                    labelPadding: EdgeInsets.zero,
                                    indicatorWeight: 0,
                                    unselectedLabelColor: Colors.black54,
                                    labelColor: defaultColor,
                                    indicator: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(5),
                                          topRight: Radius.circular(5)),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 3.0,
                                          offset: Offset(
                                            -1, // horizontal, move right 10
                                            -1, // vertical, move down 10
                                          ),
                                        ),
                                      ],
                                    ),
                                    tabs: [
                                      ...List.generate(
                                        modelRestaurant.tabNames.length,
                                        (i) => Tab(
                                          // text:modelRestaurant.tabNames[i] ,
                                          child: Text(
                                            modelRestaurant.tabNames[i],
                                            maxLines: 1,
                                          ),
                                        ),
                                      ),
                                    ]),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height / 2,
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: TabBarView(
                                    children: [
                                      ...List.generate(
                                        modelRestaurant.tabNames.length,
                                        (i) => modelRestaurant.pages[i],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
