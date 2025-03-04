import 'package:moco_app/data/data_sources/auth/login_data_source.dart';
import 'package:moco_app/domain/entities/user/user_entities.dart';
import 'package:moco_app/domain/repositories/auth/auth_repository.dart';
import '../../models/login/login_request_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final LoginDataSource loginDataSource;

  AuthRepositoryImpl(this.loginDataSource);

  @override
  Future<User> login({
    required id,
    required String mpin,
    required String platform,
    required String model,
    required String pushToken,
  }) async {
    final loginRequest = LoginRequestModel(
      platform: platform,
      model: model,
      id: id,
      mpin: mpin,
      pushToken: pushToken,
    );

    final user = await loginDataSource.login(loginRequest);

    return user;
  }

  @override
  Future<User>? getLoggedInUser() {
    // TODO: implement getLoggedInUser
    throw UnimplementedError();
  }

  @override
  Future<User> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
