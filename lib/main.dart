import 'package:flutter/material.dart';
import 'package:random_app/config/theme/app_theme.dart';
import 'package:random_app/screens/login_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().lightTheme(),
      darkTheme: AppTheme().darkTheme(),
      themeMode: ThemeMode.system,
      home: const LoginScreen()
    );
  }
}
