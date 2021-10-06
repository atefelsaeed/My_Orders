import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/views/food/model/all_restaurant_model.dart';
import 'package:my_order_app_v1/views/food/states/food_states.dart';

class FoodCubit extends Cubit<FoodStates> {
  FoodCubit() : super(FoodInitialState());

  static FoodCubit get(context) => BlocProvider.of(context);

  AllRestaurantModel allRestaurantModel = AllRestaurantModel();

  int categorySelected = 0;

  void categoryItemSelection(int value) {
    categorySelected = value;
    emit(FoodCategorySelectedItemState());
  }

  Future<void> getFoodTap() async {}

  Future<void> getFastDelivery() async {}

  Future<void> getAllRestaurant() async {}
}
