
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moco_app/domain/entities/user/user_model.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = LoginInitial;
  const factory LoginState.loading() = LoginLoading;
  const factory LoginState.success({required User user}) = LoginSuccess;
  const factory LoginState.failure({required String error}) = LoginFailure;
}
