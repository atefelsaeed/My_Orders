import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/views/auth/profile/state/profile_state.dart';

class ProfileCubit extends Cubit<ProfileStates> {
  ProfileCubit() : super(ProfileInitialState());

  static ProfileCubit get(context) => BlocProvider.of(context);

  void editProfileData() {}

  Future<void> getProfileData() async {}
}
