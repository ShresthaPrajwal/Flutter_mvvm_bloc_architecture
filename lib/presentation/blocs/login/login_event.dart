import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_event.freezed.dart';
@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.loginButtonPressed({
    required String id,
    required String mpin,
    required String platform,
    required String pushToken,
    required String model
  }) = LoginButtonPressed;
}