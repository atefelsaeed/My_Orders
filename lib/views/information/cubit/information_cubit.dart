import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/views/information/state/information_states.dart';

class InformationCubit extends Cubit<InformationStates> {
  InformationCubit() : super(InformationInitialState());

  static InformationCubit get(context) => BlocProvider.of(context);

  Future<void> getData() async {}
}
