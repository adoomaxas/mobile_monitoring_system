import 'package:auto_route/annotations.dart';
import 'package:axeta/presentation/auth_screen/auth_screen_view.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthScreenView();
  }
}
