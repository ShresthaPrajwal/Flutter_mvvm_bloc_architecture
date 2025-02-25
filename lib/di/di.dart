import 'package:get_it/get_it.dart';
import 'package:moco_app/core/networks/dio_client.dart';
import 'package:moco_app/data/data_sources/auth/login_data_source.dart';
import 'package:moco_app/data/repositories/auth/auth_repository_impl.dart';
import 'package:moco_app/domain/usecases/login/login_usecase.dart';
import 'package:moco_app/presentation/blocs/login/login_bloc.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  getIt.registerSingleton<DioClient>(DioClient());

  // Data Sources
  getIt.registerSingleton<LoginDataSource>(
    LoginDataSource(dioClient: getIt<DioClient>().dio),
  );

  // Repositories
  getIt.registerSingleton<AuthRepositoryImpl>(
    AuthRepositoryImpl(getIt<LoginDataSource>()),
  );

  // Use Cases
  getIt.registerSingleton<LoginUsecase>(
    LoginUsecase(getIt<AuthRepositoryImpl>()),
  );

  // BLoCs
  getIt.registerFactory<LoginBloc>(() => LoginBloc(getIt<LoginUsecase>()));
}
