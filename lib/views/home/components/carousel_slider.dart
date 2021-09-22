import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/views/home/models/item_slider_model.dart';

ItemSliderModel itemSliderModel=ItemSliderModel();
class ItemSliderImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/4,
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: CarouselSlider.builder(
        slideBuilder: (index) => Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Image.asset(
            'assets/images/${itemSliderModel.images[index]}',
            fit: BoxFit.fill,
          ),
        ),
        itemCount: itemSliderModel.images.length,
        slideIndicator: CircularSlideIndicator(
          itemSpacing: 15,
          indicatorBackgroundColor: Colors.red.shade200,
          indicatorBorderWidth: 0,
          currentIndicatorColor: defaultColor,
        ),
      ),
    );
  }
}
