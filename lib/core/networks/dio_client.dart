import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:moco_app/core/constants/header_constants.dart';
import 'package:moco_app/core/constants/url_constants.dart';
import 'package:moco_app/helpers/device_info/device_info_helper.dart';

class DioClient {
  final Dio _dio = Dio();
  final DeviceInfoHelper _deviceInfoHelper = DeviceInfoHelper();

  DioClient() {
    _dio.options.baseUrl = UrlConstants.baseUrl;
    _dio.interceptors.add(LogInterceptor(responseBody: true));
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final headers = await _getCustomHeaders();
          options.headers.addAll(headers);
          return handler.next(options);
        },
      ),
    );
  }

  Dio get dio => _dio;

  Future<Map<String, String>> _getCustomHeaders() async {
    String? deviceId = await _deviceInfoHelper.getDeviceId();
    String geolocation = await _getGeoLocation();

    return {
      HeaderConstants.deviceIdHeader: deviceId ?? '',
      HeaderConstants.geoLocationHeader: geolocation,
    };
  }

  Future<String> _getGeoLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) return 'Location Service Disabled';

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) return 'Permission Denied';

      if (permission == LocationPermission.deniedForever) {
        return 'Permission Denied Forever';
      }
    }
    Position position = await Geolocator.getCurrentPosition();
    return '${position.latitude}, ${position.longitude}';
  }
}
