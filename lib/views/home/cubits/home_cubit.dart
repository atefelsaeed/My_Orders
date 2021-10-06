import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/views/home/states/home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  int categorySelected = 0;

  void categoryItemSelection(int value) {
    categorySelected = value;
    emit(HomeCategorySelectedItemState());
  }


  Future<void> getFoodCategories() async {}
  Future<void> getItemSliderImages() async {}
  Future<void> getItemFood() async {}
  Future<void> getPopularBrand() async {}
  Future<void> getSpecialOffers() async {}

  // @override
  // Future<void> close() {
  //   // TODO: implement close
  //   return super.close();
  // }
}
