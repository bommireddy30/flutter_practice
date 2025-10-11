import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Gradientcontainer([
          Color.fromARGB(255, 23, 150, 80),
          Color.fromARGB(255, 12, 82, 44),
        ]),
      ),
    ),
  );
}
