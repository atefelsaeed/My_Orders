import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:my_order_app_v1/views/reviews/components/reviews.dart';
import 'package:my_order_app_v1/views/reviews/cubit/reviews_cubit.dart';
import 'package:my_order_app_v1/views/reviews/state/reviews_states.dart';
import 'package:my_order_app_v1/widgets/default_app_bar.dart';
import 'package:my_order_app_v1/widgets/rating_bar.dart';
import 'package:easy_localization/easy_localization.dart';

import 'widgets/item_rating_reviews_card.dart';

class ReviewsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReviewsCubit(),
      child: BlocBuilder<ReviewsCubit, ReviewsStates>(
        builder: (context, state) => Scaffold(
          appBar: defaultAppBar(
            LocaleKeys.reviews.tr(),
          ),
          body: SingleChildScrollView(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        DefaultRatingBar(),
                        Spacer(),
                        Text(
                          'Based on 2100 review',
                          style: TextStyle(color: Colors.black45),
                        )
                      ],
                    ),
                    Reviews(
                      title: LocaleKeys.order_packaging.tr(),
                      rate: '4.0',
                    ),
                    Reviews(
                      title: LocaleKeys.value_for_money.tr(),
                      rate: '4.0',
                    ),
                    Reviews(
                      title: LocaleKeys.delivery_time.tr(),
                      rate: '4.5',
                    ),
                    Reviews(
                      title: LocaleKeys.quality_of_food.tr(),
                      rate: '4.0',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      LocaleKeys.rating_reviews.tr(),
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    ItemRatingAndReview(),
                    ItemRatingAndReview(),
                    ItemRatingAndReview(),
                    ItemRatingAndReview(),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        LocaleKeys.read_more_reviews.tr(),
                        style: TextStyle(color: defaultColor, fontSize: 16),
                      ),
                    ),
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
