import 'package:moco_app/core/networks/dio_client.dart';
import 'package:moco_app/data/models/user/user_model.dart';
import 'package:moco_app/domain/entities/user/user_model.dart';

class LoginDataSource {
  final DioClient dioClient;

  LoginDataSource({required this.dioClient});

  Future<User> login(String email, String password) async {
    final response = await dioClient.dio.post(
      '/user/authentication',
      data: {'id': email, 'mpin': password},
    );

    return UserModel.fromJson(response.data).toEntity();
  }
}
