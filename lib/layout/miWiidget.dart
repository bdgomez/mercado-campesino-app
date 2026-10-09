import 'package:flutter/material.dart';

class MiWidget extends StatelessWidget {
  const MiWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hola Mundo',
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: Colors.teal,
          decoration: TextDecoration.underline,
          letterSpacing: 2,
        ), // TextStyle
      ), // Text
    ); // Center
  }
}