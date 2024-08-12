
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/features/auth/data/models/user_model/user_model.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
}
