import 'package:moco_app/core/networks/dio_client.dart';
import 'package:moco_app/data/models/user/user_model.dart';
import 'package:moco_app/domain/model/user/user_model.dart';

class LoginDataSource {
  final DioClient dioClient;

  LoginDataSource({required this.dioClient}) {
    print('DioClient initialized: ${dioClient.hashCode}');
  }

  Future<User> login(String email, String password) async {
    final response = await dioClient.dio.post(
      '/login',
      data: {'email': email, 'password': password},
    );

    print('login response $response');

    return UserModel.fromJson(response.data).toEntity();
  }
}
