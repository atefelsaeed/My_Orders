import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order_app_v1/views/reviews/state/reviews_states.dart';

class ReviewsCubit extends Cubit<ReviewsStates> {
  ReviewsCubit() : super(ReviewsInitialState());

  static ReviewsCubit get(context) => BlocProvider.of(context);

  Future<void> getData() async {}
}
