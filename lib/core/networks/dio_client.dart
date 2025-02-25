import 'package:dio/dio.dart';

class DioClient {
  final Dio _dio = Dio();

  DioClient() {
    _dio.options.baseUrl = 'https://your-api-url.com';
    _dio.interceptors.add(LogInterceptor(responseBody: true));
  }

  Dio get dio => _dio;
}
