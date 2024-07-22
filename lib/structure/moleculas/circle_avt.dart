import 'package:flutter/material.dart';

class CircleAvt extends StatelessWidget {
  final String rutaImg;
  final double radio;
  const CircleAvt({super.key, required this.rutaImg, required this.radio});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radio,
      backgroundImage: AssetImage(rutaImg),
    );
  }
}
