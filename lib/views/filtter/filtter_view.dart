import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/views/filtter/cubit/filter_cubit.dart';
import 'package:my_order_app_v1/views/filtter/states/filter_state.dart';
import 'package:my_order_app_v1/widgets/default_app_bar.dart';
import 'package:my_order_app_v1/widgets/default_button.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';

import 'components/filter_item.dart';
import 'cubit/filter_function.dart';

class FilterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FilterCubit(),
      child: BlocBuilder<FilterCubit,FilterStates>(
        builder:(context,state)=> Scaffold(
          appBar: defaultAppBar('cuisines'),
          body: Container(
            color: Colors.white,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Popular filter',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Wrap(children: [
                    FilterChipsWidget(
                      text: FilterCubit.get(context).helal,
                    ),
                  ]),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: defaultButton(
                      function: () {},
                      radius: 10,
                      text: 'Apply',
                    ),
                  ),
                  heightSizedBox(50),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
