import 'package:moco_app/domain/entities/user/user_model.dart';

abstract class AuthRepository {
  Future<User> login({required String email,required String password});
}
