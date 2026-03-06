import 'package:flutter/material.dart';
import 'package:random_app/screens/loginform_screen.dart';
import 'package:random_app/screens/registerform_screen.dart';
import 'package:random_app/widgets/button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Align(
          alignment: AlignmentGeometry.bottomCenter,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              MainButton(
                text: "Login", 
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginFormScreen())),
              ),
              const Padding(padding:  EdgeInsets.all(5)),
              MainButton(
                text: "Sign Up", 
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterFormScreen())),
                color: Colors.grey,
                ),
            ],
          ),
        ),
      ),
    );
  }
}