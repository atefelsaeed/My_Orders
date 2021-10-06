import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:my_order_app_v1/views/food/components/food_tap.dart';
import 'package:my_order_app_v1/views/food/cubit/food_cubit.dart';
import 'package:my_order_app_v1/views/food/states/food_states.dart';
import 'package:my_order_app_v1/widgets/home_app_bar.dart';

import 'model/food_model.dart';

class FoodView extends StatelessWidget {
  final FoodModel foodModel = FoodModel();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: foodModel.pages.length,
      initialIndex: 0,
      child: BlocProvider(
        create: (context) => FoodCubit(),
        child: BlocConsumer<FoodCubit, FoodStates>(
          listener: (context, state) {},
          builder: (context, state) => Scaffold(
            appBar: homeAppBar(
              context: context,
              iconColor: Colors.black,
              tapBar: TabBar(
                labelPadding: EdgeInsets.symmetric(horizontal: 5),
                isScrollable: true,
                indicatorWeight: 0,
                unselectedLabelColor: Colors.black54,
                labelColor: defaultColor,
                indicatorColor: Colors.white,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                tabs: List.generate(
                  foodModel.pages.length,
                  (i) => Tab(
                    child: FoodTap(
                      onTap: (){
                        FoodCubit.get(context).categoryItemSelection(i);
                      },
                      icon: foodModel.icons[i],
                      title: foodModel.titles[i].tr(),
                      color: FoodCubit.get(context).categorySelected == i
                          ? Colors.green
                          : Colors.red,
                    ),
                  ),
                ),
              ),
            ),
            body: TabBarView(
                children:
                    // ListView.builder(
                    //   itemBuilder: (context, i) => foodModel.pages[i],
                    //   itemCount: foodModel.pages.length,
                    // ),
                    List.generate(
                        foodModel.pages.length, (i) => foodModel.pages[i])),
          ),
        ),
      ),
    );
  }
}
