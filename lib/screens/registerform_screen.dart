import 'package:flutter/material.dart';
import 'package:random_app/screens/home_screen.dart';
import 'package:random_app/screens/loginform_screen.dart';
import 'package:random_app/widgets/button.dart';
import 'package:random_app/widgets/textfield.dart';

class RegisterFormScreen extends StatelessWidget {
  const RegisterFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CustomTextField(customHolder: "Username"),
            const SizedBox(height: 5),
            CustomTextField(customHolder: "Email"), 
            const SizedBox(height: 5),
            CustomTextField(customHolder: "Password", obsure: true),
            const SizedBox(height: 15),
            MainButton(text: "Register", onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()))),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginFormScreen())),
              child: const Text(
                "Already have an account? Sign In",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}