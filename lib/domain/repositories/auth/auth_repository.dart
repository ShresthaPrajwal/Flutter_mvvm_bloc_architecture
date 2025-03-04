import 'package:moco_app/domain/entities/user/user_entities.dart';

abstract class AuthRepository {
  Future<User> login({
    required String id,
    required String mpin,
    // required String platform,
    // required String model,
    // required String pushToken,
  });

  Future<User>? getLoggedInUser();

  Future<User> logout();
}
