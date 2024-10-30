import 'package:flutter/material.dart';
import 'package:goroute_app/config/router/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'GoRouter App',
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
    );
  }
}