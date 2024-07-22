import 'package:app_t_v_1/common/paleta.dart';
import 'package:app_t_v_1/common/tema.dart';
import 'package:app_t_v_1/structure/moleculas/circle_avt.dart';
import 'package:app_t_v_1/structure/moleculas/contenerdores_txt.dart';
import 'package:flutter/material.dart';

class ContenedorBlanco extends StatelessWidget {
  final Widget hijo;
  final double width;
  final double height;
  const ContenedorBlanco(
      {super.key,
      required this.width,
      required this.height,
      required this.hijo});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(children: [hijo]),
    );
  }
}

//Contenedor de producto
class ContainerProduct extends StatelessWidget {
  const ContainerProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        alignment: Alignment.topCenter,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: colorContainerProduct,
          border: Border.all(color: colorBorderContainerProduct),
        ),
        child: Column(
          children: [
            ContainerText(
                ajustar: Alignment.center,
                ajustarTexto: TextAlign.center,
                width: 0.5,
                heigth: 0.03,
                title: 'Tomate Chonto',
                estilo: temaApp.textTheme.bodyLarge,
                minFontSize: 12,
                maxLines: 1,
                maxFontSize: 18),
            CircleAvt(
                rutaImg: 'images/4.jpg',
                radio: MediaQuery.of(context).size.width * 0.1),
            ContainerText(
                ajustar: Alignment.center,
                ajustarTexto: TextAlign.center,
                width: 0.6,
                heigth: 0.03,
                estilo: temaApp.textTheme.displayLarge,
                minFontSize: 12,
                maxFontSize: 18,
                maxLines: 1,
                title: 'Estado de maduración: Maduro'),
            ContainerText(
                ajustar: Alignment.center,
                ajustarTexto: TextAlign.center,
                width: 0.5,
                heigth: 0.03,
                estilo: temaApp.textTheme.displayLarge,
                minFontSize: 8,
                maxFontSize: 18,
                maxLines: 1,
                title: 'Precio canasta: 20.000'),
          ],
        ),
      ),
    );
  }
}

//Variables
double cantDisp = 0.0;
String fechaCosecha = '';

//Contenedor de información del producto
class ContainerDateProduct extends StatelessWidget {
  final double width;
  final double height;
  const ContainerDateProduct(
      {super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * width,
      height: MediaQuery.of(context).size.height * height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color3, width: 2),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.015,
                left: MediaQuery.of(context).size.width * 0.05),
            child: Column(
              children: [
                ContainerText(
                    width: 0.45,
                    heigth: 0.04,
                    estilo: temaApp.textTheme.displaySmall,
                    minFontSize: 13,
                    maxFontSize: 14,
                    title: 'Cantidad disponible:',
                    maxLines: 1,
                    ajustar: Alignment.centerLeft,
                    ajustarTexto: TextAlign.center),
                ContainerText(
                    width: 0.45,
                    heigth: 0.04,
                    estilo: temaApp.textTheme.displaySmall,
                    minFontSize: 13,
                    maxFontSize: 14,
                    title: 'Fecha de cosecha:',
                    maxLines: 1,
                    ajustar: Alignment.centerLeft,
                    ajustarTexto: TextAlign.center),
                ContainerText(
                    width: 0.45,
                    heigth: 0.04,
                    estilo: temaApp.textTheme.displaySmall,
                    minFontSize: 13,
                    maxFontSize: 14,
                    title: 'Fecha de caducidad:',
                    maxLines: 1,
                    ajustar: Alignment.centerLeft,
                    ajustarTexto: TextAlign.center),
                ContainerText(
                    width: 0.45,
                    heigth: 0.04,
                    estilo: temaApp.textTheme.displaySmall,
                    minFontSize: 13,
                    maxFontSize: 14,
                    title: 'Estado de maduración:',
                    maxLines: 1,
                    ajustar: Alignment.centerLeft,
                    ajustarTexto: TextAlign.center),
                ContainerText(
                    width: 0.45,
                    heigth: 0.04,
                    estilo: temaApp.textTheme.displaySmall,
                    minFontSize: 13,
                    maxFontSize: 14,
                    title: 'Precio canasta:',
                    maxLines: 1,
                    ajustar: Alignment.centerLeft,
                    ajustarTexto: TextAlign.center)
              ],
            ),
          ),
          const Column(
            children: [],
          )
        ],
      ),
    );
  }
}
