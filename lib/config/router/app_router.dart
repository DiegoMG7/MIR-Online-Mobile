
import 'package:go_router/go_router.dart';
import 'package:mir_mobile/presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: IntroScreen.nameRoute,
      builder: (context, state) => const IntroScreen(),
    ),

    GoRoute(
      path: '/login',
      name: LoginScreen.nameRoute,
      builder: (context, state) => const LoginScreen(),
    ),

    GoRoute(
      path: '/loginCredentials',
      name: LoginCredentials.nameRoute,
      builder: (context, state) => const LoginCredentials(),
    )
  ],
);