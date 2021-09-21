import 'package:flutter/material.dart';
import 'package:my_order_app_v1/const/style.dart';

import 'filter_cubit.dart';


class FilterChipsWidget extends StatelessWidget {
  const FilterChipsWidget({Key? key, required this.text}) : super(key: key);
  final List<String> text;

  @override
  Widget build(BuildContext context) {
    FilterCubit cubit = FilterCubit.get(context);

    return Wrap(
      spacing: 5,
      runSpacing: 5,
      children: text
          .map(
            (value) => FilterChip(
              selectedColor: defaultColor,
              backgroundColor: Colors.pink.shade200,
              checkmarkColor: Colors.white,
              selected: cubit.isSelectList.contains(value),
              label: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  value,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onSelected: (select) {
                cubit.onSelectedValue( value,select);
              },
            ),
          )
          .toList(),
    );
  }
}
