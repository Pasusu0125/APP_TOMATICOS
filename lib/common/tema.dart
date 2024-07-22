import 'package:app_t_v_1/common/paleta.dart';
import 'package:flutter/material.dart';

final temaApp = ThemeData(
    textTheme: const TextTheme(
  //Tipo de letra portada
  titleMedium: TextStyle(
      fontWeight: FontWeight.w500,
      fontFamily: 'Riot',
      color: Color.fromRGBO(255, 255, 255, 1),
      fontSize: 55),
  titleLarge: TextStyle(
      fontWeight: FontWeight.w500,
      fontFamily: 'Riot',
      color: Colors.black,
      fontSize: 55),
  titleSmall: TextStyle(
      fontFamily: 'Riot',
      color: color3,
      fontWeight: FontWeight.w500,
      fontSize: 30),
  bodyMedium: TextStyle(
      fontFamily: 'Poppins',
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 30),
  bodyLarge: TextStyle(
      fontFamily: 'Poppins',
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 12),
  bodySmall: TextStyle(
      fontFamily: 'Poppins',
      color: Colors.white,
      fontWeight: FontWeight.w800,
      fontSize: 20),
  displayLarge: TextStyle(
      fontFamily: 'Poppins',
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontSize: 20),
  displayMedium: TextStyle(
      fontFamily: 'Poppins',
      color: color3,
      fontWeight: FontWeight.w800,
      fontSize: 20),
  displaySmall: TextStyle(
      fontFamily: 'Poppins',
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontSize: 12),
));
