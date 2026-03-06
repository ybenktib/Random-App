import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final String CustomHolder;

  const CustomTextField({
    super.key,
    required this.CustomHolder
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.07,
      child: TextField(
        decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        hintText: CustomHolder,
        hoverColor: Colors.blue,
        fillColor: Colors.blue
      ))
    );
  }
}