import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  
  final String text;
  final VoidCallback onPressed;
  final Color? color;
  
  const MainButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color
    });

  @override
  Widget build (BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.07,
        width:  MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: color ?? Colors.blue,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}