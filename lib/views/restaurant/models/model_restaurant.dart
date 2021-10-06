import 'package:my_order_app_v1/views/restaurant/components/restaurant_filter.dart';

class ModelRestaurant{

  var tabNames=[
    'All',
    'Chicken',
    'Sandwich',
    'Koshary',
  ];

  var pages = [
    RestaurantFilter(),
    RestaurantFilter(),
    RestaurantFilter(),
    RestaurantFilter(),
  ];


}