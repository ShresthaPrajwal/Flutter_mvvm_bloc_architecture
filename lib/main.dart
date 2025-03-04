import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moco_app/core/routes/router.dart';
import 'package:moco_app/core/theme/app_theme.dart';
import 'package:moco_app/core/theme/dark_theme.dart';
import 'package:moco_app/di/di.dart';
import 'package:moco_app/presentation/blocs/login/login_bloc.dart';

void main() {
  setupDependencies(); // Initialize dependencies
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginBloc>(),
      child: MaterialApp.router(
        routerConfig: router,
        title: 'Moco_app',
        theme: appTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.system,
      ),
    );
  }
}
