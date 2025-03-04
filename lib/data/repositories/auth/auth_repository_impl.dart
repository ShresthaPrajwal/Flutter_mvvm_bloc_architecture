import 'dart:io';

import 'package:moco_app/data/data_sources/auth/login_data_source.dart';
import 'package:moco_app/domain/entities/user/user_entities.dart';
import 'package:moco_app/domain/repositories/auth/auth_repository.dart';
import 'package:moco_app/helpers/device_info/device_info_helper.dart';
import '../../models/login/login_request_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final LoginDataSource loginDataSource;
  final DeviceInfoHelper _deviceInfoHelper;

  AuthRepositoryImpl(this.loginDataSource, this._deviceInfoHelper);

  @override
  Future<User> login({
    required id,
    required String mpin,
    // required String platform,
    // required String model,
    // required String pushToken,
  }) async {
    String? model = await _deviceInfoHelper.getDeviceModel();
    String? pushToken =
        'erSBsrPKSuSbazOD8BkRoe:APA91bEygGD3xElnRimDvJKZgeXtzT8TLMAWpNhL3vnf8-Db0bNLNxlJpWpq7iRKApLamllUr7bY9kriO0ARh1-lPEV8x_Nh3vkbwjf2ZliOhEhOHB3IcGQ';

    final loginRequest = LoginRequestModel(
      platform:
          Platform.isAndroid
              ? 'android'
              : Platform.isIOS
              ? 'ios'
              : '',
      model: model ?? '',
      id: id,
      mpin: mpin,
      pushToken: pushToken,
    );

    print('here is loginREquest $loginRequest');

    final user = await loginDataSource.login(loginRequest);

    return user;
  }

  @override
  Future<User>? getLoggedInUser() {
    // TODO: implement getLoggedInUser
    throw UnimplementedError();
  }

  @override
  Future<User> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
