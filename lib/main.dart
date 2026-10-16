import 'package:flutter/material.dart';
import 'gradient.dart';
void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(),
      )
    )
  );
}