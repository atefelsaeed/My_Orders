import 'package:flutter/cupertino.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:my_order_app_v1/const/style.dart';
List<Image> image = [
  Image.asset('assets/images/offer.png'),
  Image.asset('assets/images/offer.png'),
];
Widget carouselSlider(){
  return Container(
    height: 200,
    child: CarouselSlider.builder(
      slideBuilder: (index) => Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: image[index],
      ),
      itemCount: image.length,
      slideIndicator: CircularSlideIndicator(
        itemSpacing: 15,
        indicatorBackgroundColor: secondaryColor,
        indicatorBorderWidth: 0,
        currentIndicatorColor: defaultColor,
      ),
    ),
  );
}