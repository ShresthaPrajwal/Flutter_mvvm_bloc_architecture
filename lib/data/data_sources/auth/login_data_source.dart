import 'package:dio/dio.dart';
import 'package:moco_app/data/models/user/user_model.dart';
import 'package:moco_app/domain/model/user/user_model.dart';

class LoginDataSource {
  final Dio dioClient;

  const LoginDataSource({required this.dioClient});

  Future<User> login(String email, String password) async {
    final response = await dioClient.post(
      '/login',
      data: {'email': email, 'password': password},
    );

    print('login response $response');

    return UserModel.fromJson(response.data).toEntity();
  }
}
