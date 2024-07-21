import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/features/onBoarding/presentation/manager/cubit/onboarding_state.dart';

class OnbordingCubit extends Cubit<OnbordingState> {
  OnbordingCubit() : super(OnbordingInitial());
  int initialPage = 0;

  toFirstPage() {
    initialPage = 0;
    emit(ChangedView(initialPage: 0));
  }

  toSecondPage() {
    initialPage = 1;
    emit(ChangedView(initialPage: 1));
  }

  toThirdPage() {
    initialPage = 2;
    emit(ChangedView(initialPage: 2));
  }
}
