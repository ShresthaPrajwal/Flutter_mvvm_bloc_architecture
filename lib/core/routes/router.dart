import 'package:go_router/go_router.dart';
import 'package:moco_app/presentation/pages/home.page.dart';
import 'package:moco_app/presentation/pages/splash.page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashPage()),
    GoRoute(path: '/home', builder: (context, state) => const HomePage()),
  ],
);
