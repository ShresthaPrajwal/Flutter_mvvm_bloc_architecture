import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';

class DeviceInfoHelper {
  final DeviceInfoPlugin _deviceInfoPlugin = DeviceInfoPlugin();

  Future<String?> getDeviceId() async {
    try {
      if (Platform.isAndroid) {
        var androidInfo = await _deviceInfoPlugin.androidInfo;
        return androidInfo.id;
      } else if (Platform.isIOS) {
        var iosInfo = await _deviceInfoPlugin.iosInfo;
        return iosInfo.identifierForVendor;
      } else {
        return 'Unsupported Platform';
      }
    } catch (e) {
      return 'Error retrieving device ID: $e';
    }
  }

  Future<String?> getDeviceModel() async {
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await _deviceInfoPlugin.androidInfo;
      return androidInfo.model;
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await _deviceInfoPlugin.iosInfo;
      return iosInfo.model;
    }
    return null;
  }
}
