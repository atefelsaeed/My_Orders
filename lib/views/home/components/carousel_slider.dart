import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:my_order_app_v1/const/style.dart';

List<Image> image = [
  Image.asset(
    'assets/images/offer.png',
    fit: BoxFit.cover,
    width: double.infinity,
  ),
  Image.asset(
    'assets/images/offer.png',
    fit: BoxFit.cover,
    width: double.infinity,
  ),
  Image.asset(
    'assets/images/offer.png',
    fit: BoxFit.cover,
    width: double.infinity,
  ),
];

Widget carouselSlider() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5.0),
    child: Container(
      height: 150,
      child: CarouselSlider.builder(
        slideBuilder: (index) => Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: image[index],
        ),
        itemCount: image.length,
        slideIndicator: CircularSlideIndicator(
          itemSpacing: 15,
          indicatorBackgroundColor: Colors.red.shade200,
          indicatorBorderWidth: 0,
          currentIndicatorColor: defaultColor,
        ),
      ),
    ),
  );
}
