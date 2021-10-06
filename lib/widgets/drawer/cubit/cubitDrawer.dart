import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/widgets/drawer/states/stateDrawer.dart';

class DrawerCubit extends Cubit<DrawerStates> {
  DrawerCubit() : super(DrawerInitialState());

  static DrawerCubit get(context) => BlocProvider.of(context);


  int isSelected = 0;

  void itemSelection(int value) {
    isSelected = value;
    emit(DrawerSelectedItemState());
  }


  bool notificationSwitchButton = false;

  void onSwitchNotificationButton(bool val) {
    notificationSwitchButton = val;
    emit(DrawerOnSwitchNotificationButtonState());
  }

  var languages = ['English', 'العربية'];
  String dropdownValue = 'English';

  String get getCurrentLanguage => dropdownValue;

  void chooseLanguage(String val) {
    dropdownValue = val;
    emit(DrawerChooseLanguageState());
  }

  var country = ['Egypt', 'USA'];
  String countryDropdownValue = 'Egypt';

  void chooseCountry(String? val) {
    countryDropdownValue = val!;
    emit(DrawerChooseLanguageState());
  }
}
