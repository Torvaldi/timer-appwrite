import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:timer_appwrite/data/repository/appwrite_repository.dart';
import 'package:timer_appwrite/home.dart';
import 'package:timer_appwrite/pages/login_page.dart';

// Simule l'état de connexion (remplace par ta logique réelle)
Future<bool> isLoggedIn() async {
  try {
    await AppwriteRepository().account.get();
    return true;
  } catch (e) {
    return false;
  }
}

final GoRouter _router = GoRouter(
  redirect: (context, state) async {
    final loggedIn = await isLoggedIn();
    final loggingIn = state.uri.toString() == '/login';
    if (!loggedIn && !loggingIn) return '/login';
    if (loggedIn && loggingIn) return '/';
    return null;
  },
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
  ],
);

class TimerApp extends StatelessWidget {
  const TimerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Timer App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: _router,
    );
  }
}
