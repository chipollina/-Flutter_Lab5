import 'dart:math';
import 'package:flutter/material.dart';
final randomizer = Random();
class Flag extends StatefulWidget {
  const Flag({super.key});
  @override
  State<Flag> createState() {
    return _FlagState();
  }
}
class _FlagState extends State<Flag> {
  final List<String> flags =[
    "assets/images/braz.png",
    "assets/images/ger.png",
    "assets/images/vel.jpg",
  ];
  var activeFlag = "assets/images/braz.png";
  void nextflag() {
    setState(() {
      var flagN= randomizer.nextInt(3);
      activeFlag=flags[flagN];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeFlag,
          width: 300,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: nextflag,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 30,
            ),
          ),
          child: const Text("Следующий флаг"),
        ),
      ],
    );
  }
}