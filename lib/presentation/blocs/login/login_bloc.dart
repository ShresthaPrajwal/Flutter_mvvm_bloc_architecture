import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moco_app/domain/usecases/login/login_usecase.dart';
import 'package:moco_app/presentation/blocs/login/login_event.dart';
import 'package:moco_app/presentation/blocs/login/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUsecase loginUseCase;

  LoginBloc(this.loginUseCase) : super(LoginInitial()) {
    on<LoginButtonPressed>(_onLoginButtonPressed);
  }

  void _onLoginButtonPressed(
    LoginButtonPressed event,
    Emitter<LoginState> emit,
  ) async {
    emit(LoginLoading());
    try {
      final user = await loginUseCase(event.email, event.password);
      emit(LoginSuccess(user: user));
    } catch (e) {
      emit(LoginFailure(error: e.toString()));
    }
  }
}
