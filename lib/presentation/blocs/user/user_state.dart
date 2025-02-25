import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moco_app/data/models/user/user_model.dart';
part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = UserInitial;
  const factory UserState.loading() = UserLoading;
  const factory UserState.loaded({required UserModel user}) = UserLoaded;
}
