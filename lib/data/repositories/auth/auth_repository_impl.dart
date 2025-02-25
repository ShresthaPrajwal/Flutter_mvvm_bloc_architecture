import 'package:moco_app/data/data_sources/auth/login_data_source.dart';
import 'package:moco_app/domain/model/user/user_model.dart';
import 'package:moco_app/domain/repositories/auth/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final LoginDataSource loginDataSource;

  AuthRepositoryImpl(this.loginDataSource);

  @override
  Future<User> login({required String email, required String password}) async {
    return await loginDataSource.login(email, password);
  }
}
