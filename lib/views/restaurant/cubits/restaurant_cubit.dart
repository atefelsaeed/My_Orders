import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/views/restaurant/states/restaurant_states.dart';

class RestaurantCubit extends Cubit<RestaurantStates>{

  RestaurantCubit(): super(RestaurantInitialState());

  static RestaurantCubit get(context) => BlocProvider.of(context);


  Future<void> getMealTap() async {}

  Future<void> getMealData() async {}

  Future<void> getRestaurantFilter() async {}

}