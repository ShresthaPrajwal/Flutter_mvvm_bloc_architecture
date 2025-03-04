import 'package:moco_app/domain/entities/user/user_entities.dart';
import 'package:moco_app/domain/repositories/auth/auth_repository.dart';

class LoginUsecase {
  final AuthRepository repository;
  LoginUsecase(this.repository);

  Future<User> login({
    required String id,
    required String mpin,
    required String platform,
    required String model,
    required String pushToken,
  }) async {
    return await repository.login(
      id: id,
      mpin: mpin,
      platform: platform,
      model: model,
      pushToken: pushToken,
    );
  }
}
