import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final String customHolder;
  final bool obsure;

  const CustomTextField({
    super.key,
    required this.customHolder,
    this.obsure = false
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.07,
      child: TextField(
        obscureText: obsure,
        decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        hintText: customHolder,
        hoverColor: Colors.blue,
        fillColor: Colors.blue
      ))
    );
  }
}