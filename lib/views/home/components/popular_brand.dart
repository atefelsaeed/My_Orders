import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:my_order_app_v1/views/home/models/popular_brand_model.dart';
import 'package:my_order_app_v1/widgets/sized_box.dart';

PopularBrandModel popularBrandModel=PopularBrandModel();

class PopularBrand extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 4,
          child: ListView.builder(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                        child: Image.asset('assets/images/${popularBrandModel.brandList[index]}',
                          width: MediaQuery.of(context).size.width / 3,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    heightSizedBox(5),
                    Text(
                      'Gad',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              );
            },
            itemCount: popularBrandModel.brandList.length,
          ),
        ),
      ],
    );
  }
}

