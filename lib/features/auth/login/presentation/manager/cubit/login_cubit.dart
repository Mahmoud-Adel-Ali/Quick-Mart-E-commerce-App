import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart_app/features/auth/data/models/sign_up_user/sign_up_model.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
}
