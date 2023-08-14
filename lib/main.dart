import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: gradientDecoration(const Color.fromARGB(255, 26, 20, 83),const Color.fromARGB(255, 125, 115, 221)),
      ),
    ),
  );
}



