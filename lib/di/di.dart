import 'package:get_it/get_it.dart';
import 'package:moco_app/core/networks/dio_client.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  getIt.registerSingleton(DioClient());
}
