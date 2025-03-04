import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moco_app/core/routes/router.dart';
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
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          textTheme: TextTheme(
            bodySmall: GoogleFonts.montserrat(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),

            //Body Medium
            bodyMedium: GoogleFonts.montserrat(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),

            //Body Large
            bodyLarge: GoogleFonts.montserrat(
              fontSize: 19,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
