import 'package:flutter_bloc/flutter_bloc.dart';

part 'checkout_state.dart';

class CheckoutCubit extends Cubit<CheckoutState> {
  CheckoutCubit() : super(CheckoutInitial());

  // Controls the body view
  int initialView = 1;
  void _changeViewBody(int index) {
    initialView = index;
    emit(ChangeViewBody());
  }

  void toPaymentView() {
    _changeViewBody(2);
  }

  void toReviewOrder() {
    _changeViewBody(3);
  }
}
