import 'package:flutter/material.dart';
import 'package:random_app/screens/home_screen.dart';
import 'package:random_app/widgets/button.dart';
import 'package:random_app/widgets/textfield.dart';

class LoginFormScreen extends StatelessWidget {
  const LoginFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTextField(CustomHolder: "Username"),
            const SizedBox(height: 10),
            CustomTextField(CustomHolder: "Password"),
            const SizedBox(height: 20),
            MainButton(text: "Login", onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen())))
          ],
        ),
      )
    );
  }
}