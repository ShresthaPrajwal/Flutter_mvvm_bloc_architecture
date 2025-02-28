import 'package:moco_app/domain/entities/user/user_model.dart';
import 'package:moco_app/domain/repositories/auth/auth_repository.dart';

class LoginUsecase {
  final AuthRepository repository;
  LoginUsecase(this.repository);

  Future<User> call(String email, String password) async {
    return await repository.login(email: email, password: password);
  }
}
