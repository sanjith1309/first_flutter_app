//import 'package:first_app/text_style.dart';
import 'package:first_app/numchange.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class gradientDecoration extends StatelessWidget {
  gradientDecoration(this.Startcolour, this.Endcolour, {super.key});
  final Color Startcolour;
  final Color Endcolour;

  

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Startcolour, Endcolour],
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: MyWidget(),
      ),
    );
  }
}
