import 'package:flutter/material.dart';
import 'package:login_app_lecture_1/screens/splash_screen.dart';
import 'package:login_app_lecture_1/themes/custom_theme.dart';

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomTheme.lightTheme,
      home: const SplashScreen(),
    );
  }
}
