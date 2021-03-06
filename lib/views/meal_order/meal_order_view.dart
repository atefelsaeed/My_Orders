import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/views/meal_order/cubits/meal_order_cubit.dart';

import 'components/add_notes.dart';
import 'components/add_to_cart_button.dart';
import 'components/choose_size.dart';
import 'components/extras_options.dart';
import 'components/meal_count.dart';
import 'components/meal_image.dart';
import 'states/meal_order_states.dart';

class MealOrderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MealOrderCubit(),
      child: BlocConsumer<MealOrderCubit, MealOrderStates>(
        listener: (context, state) {},
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
          ),
          body: Container(
            color: Colors.white,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MealImage(),
                    SizedBox(
                      height: 20,
                    ),
                    MealCount(),
                    SizedBox(
                      height: 20,
                    ),
                    ChooseSize(),
                    SizedBox(
                      height: 20,
                    ),
                    ExtrasOptions(),
                    SizedBox(
                      height: 20,
                    ),
                    AddNotes(),
                    SizedBox(
                      height: 35,
                    ),
                    AddToCartButton(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
