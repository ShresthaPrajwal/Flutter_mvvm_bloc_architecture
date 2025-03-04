import 'package:dio/dio.dart';
import 'package:moco_app/core/networks/dio_client.dart';
import 'package:moco_app/data/models/login/login_request_model.dart';
import 'package:moco_app/data/models/user/user_model.dart';
import 'package:moco_app/domain/entities/user/user_entities.dart';

class LoginDataSource {
  final DioClient dioClient;

  LoginDataSource({required this.dioClient});

  Future<User> login(LoginRequestModel loginRequestModel) async {
    String encodedData = Uri(queryParameters: loginRequestModel.toJson()).query;

    final response = await dioClient.dio.post(
      '/user/authentication',
      data: encodedData,
      options: Options(contentType: Headers.formUrlEncodedContentType),
    );

    return UserModel.fromJson(response.data).toEntity();
  }
}
