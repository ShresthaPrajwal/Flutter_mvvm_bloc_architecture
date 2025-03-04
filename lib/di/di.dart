import 'package:get_it/get_it.dart';
import 'package:moco_app/core/networks/dio_client.dart';
import 'package:moco_app/data/data_sources/auth/login_data_source.dart';
import 'package:moco_app/data/repositories/auth/auth_repository_impl.dart';
import 'package:moco_app/domain/usecases/login/login_usecase.dart';
import 'package:moco_app/helpers/device_info/device_info_helper.dart';
import 'package:moco_app/presentation/blocs/login/login_bloc.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  getIt.registerSingleton<DioClient>(DioClient());
  getIt.registerSingleton<DeviceInfoHelper>(DeviceInfoHelper());

  // Data Sources
  getIt.registerSingleton<LoginDataSource>(
    LoginDataSource(dioClient: getIt<DioClient>()),
  );

  // Repositories
  getIt.registerSingleton<AuthRepositoryImpl>(
    AuthRepositoryImpl(getIt<LoginDataSource>(), getIt<DeviceInfoHelper>()),
  );

  // Use Cases
  getIt.registerSingleton<LoginUsecase>(
    LoginUsecase(getIt<AuthRepositoryImpl>()),
  );

  // BLoCs
  getIt.registerFactory<LoginBloc>(() => LoginBloc(getIt<LoginUsecase>()));

  /* To check weather the same instances above are used properly. */

  // print(
  //   'DioClient Instance From GetIt, ${getIt.get(type: DioClient).hashCode}',
  // );
  // print(
  //   'LoginDataSource Instance From GetIt, ${getIt.get(type: LoginDataSource).hashCode}',
  // );
  // print(
  //   'AuthRepositoryImpl Instance From GetIt, ${getIt.get(type: AuthRepositoryImpl).hashCode}',
  // );
  // print(
  //   'LoginUseCase Instance From GetIt, ${getIt.get(type: LoginUsecase).hashCode}',
  // );
  // print(
  //   'LoginBloc Instance From GetIt, ${getIt.get(type: LoginBloc).hashCode}',
  // );
}
