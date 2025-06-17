import 'package:flutter/material.dart';

import '../navigation/app_router.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final AppRouter _router = AppRouter();

  @override
  void dispose() {
    _router.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Axeta App',
      debugShowCheckedModeBanner: false,
      routerConfig: _router.config(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      builder: (context, child) {
        return child ?? SizedBox.shrink();
      },
    );
  }
}
