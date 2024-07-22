import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

//Contenedor de TEXTOS
class ContainerText extends StatelessWidget {
  final double width;
  final double heigth;
  final TextStyle? estilo;
  final double minFontSize;
  final double maxFontSize;
  final String title;
  final int maxLines;
  final Alignment ajustar;
  final TextAlign ajustarTexto;
  const ContainerText(
      {super.key,
      required this.width,
      required this.heigth,
      required this.estilo,
      required this.minFontSize,
      required this.maxFontSize,
      required this.title,
      required this.maxLines,
      required this.ajustar,
      required this.ajustarTexto});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: ajustar,
      color: const Color.fromARGB(0, 255, 193, 7),
      width: MediaQuery.of(context).size.width * width,
      height: MediaQuery.of(context).size.height * heigth,
      child: AutoSizeText(
        textAlign: ajustarTexto,
        title,
        style: estilo,
        minFontSize: minFontSize,
        maxFontSize: maxFontSize,
        maxLines: maxLines,
      ),
    );
  }
}
