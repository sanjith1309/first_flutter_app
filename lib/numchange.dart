import 'dart:math';
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {     //sate ful widget allows to change the UI during the run time.
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var theimage = 'assets/dice-2.png';

  void onPressed() {                        //onpressed changes the image
    Random random = Random();
    int minValue = 1;
    int maxValue = 6;
    int randomValue = minValue + random.nextInt(maxValue - minValue + 1);

    setState(() {
      theimage = 'assets/dice-$randomValue.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          theimage,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 25),
          ),
          child: const Text("ROLL DICE"),
        ),
      ],
    );
  }
}
