import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moco_app/core/routes/router.dart';
import 'package:moco_app/di/di.dart';
import 'package:moco_app/presentation/blocs/user/user_bloc.dart';
import 'package:moco_app/presentation/blocs/user/user_state.dart';

void main() {
  setupDependencies();
  runApp(MaterialApp.router(routerConfig: router));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moco_app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        body: BlocProvider(
          create: (context) => UserBloc(),
          child: BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              return state.when(
                initial: () => Text('Initial'),
                loading: () => CircularProgressIndicator(),
                loaded: (user) => Text(user.name),
              );
            },
          ),
        ),
      ),
    );
  }
}
