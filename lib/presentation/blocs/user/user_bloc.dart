import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moco_app/data/models/user/user_model.dart';
import 'user_event.dart';
import 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserState.initial()) {
    on<FetchUser>(_onFetchUser);
  }

  void _onFetchUser(FetchUser event, Emitter<UserState> emit) async {
    emit(const UserState.loading());
    // Fetch user logic here
    emit(
      UserState.loaded(
        user: UserModel(id: 1, name: 'John', email: 'john@example.com'),
      ),
    );
  }
}
