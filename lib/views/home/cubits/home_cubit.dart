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

  int isSelected = 0;

  void itemSelection(int value) {
    isSelected = value;
    emit(HomeDrawerSelectedItemState());
  }


  bool notificationSwitchButton = false;

  void onSwitchNotificationButton(bool val) {
    notificationSwitchButton = val;
    emit(HomeOnSwitchNotificationButtonState());
  }

  var languages = ['English', 'العربية'];
  String dropdownValue = 'English';

  String get getCurrentLanguage => dropdownValue;

  void chooseLanguage(String val) {
    dropdownValue = val;

    emit(HomeChooseLanguageState());
  }

  var country = ['Egypt', 'USA'];
  String countryDropdownValue = 'Egypt';

  void chooseCountry(String? val) {
    countryDropdownValue = val!;
    emit(HomeChooseLanguageState());
  }
}
