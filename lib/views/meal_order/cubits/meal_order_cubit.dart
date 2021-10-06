import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/views/meal_order/states/meal_order_states.dart';

class MealOrderCubit extends Cubit<MealOrderStates> {
  MealOrderCubit() : super(MealOrderInitialState());

  static MealOrderCubit get(context) => BlocProvider.of(context);

  int counter = 1;
  int mealCoast = 20;

  void changeCounter() {
    counter = counter;
    emit(MealOrderChangeCounterState());
  }

  int chooseSizeItemSelection = 0;

  void chooseSizeSelection(int value) {
    chooseSizeItemSelection = value;
    emit(MealOrderChooseSizeSelectionState());
  }


  int extraOptionItemSelection = 0;

  void extraOptionSelection(int value) {
    extraOptionItemSelection = value;
    emit(MealOrderExtraOptionSelectionState());
  }

}
