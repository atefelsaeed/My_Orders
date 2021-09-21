import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/views/auth/login/states/login_states.dart';
import 'package:my_order_app_v1/views/filtter/states/filter_state.dart';

class FilterCubit extends Cubit<FilterStates> {
  FilterCubit() : super(FilterInitialState());

  static FilterCubit get(context) => BlocProvider.of(context);

  List<String> isSelectList = [];

  List<String> helal = [
    'shawerma',
    'soup',
    'warps',
    'thai',
    'shawerma1',
    'soup1',
    'warps1',
    'thai1'
  ];

  void onSelectedValue(value, select) {
    if (select) {
      isSelectList.add(value);
      emit(FilterSuccessState());
    } else {
      isSelectList.remove(value);
      emit(FilterSuccessState());
    }
  }

}
