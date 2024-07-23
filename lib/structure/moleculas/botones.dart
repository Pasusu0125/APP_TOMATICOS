import 'package:app_t_v_1/common/paleta.dart';
import 'package:app_t_v_1/common/tema.dart';
import 'package:app_t_v_1/structure/moleculas/circle_avt.dart';
import 'package:app_t_v_1/structure/moleculas/contenerdores_txt.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonWidget extends StatelessWidget {
  final Function()? ruta;
  final double width;
  final double height;
  final String texto;
  final Color color;
  final double maxFontSize;
  final double minFontSize;
  final int maxLines;
  const ButtonWidget(
      {super.key,
      required this.ruta,
      required this.width,
      required this.height,
      required this.texto,
      required this.color,
      required this.maxFontSize,
      required this.minFontSize,
      required this.maxLines});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: ruta,
      color: color,
      elevation: 2,
      minWidth: MediaQuery.of(context).size.width * width,
      height: MediaQuery.of(context).size.height * height,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: AutoSizeText(
        texto,
        style: temaApp.textTheme.bodySmall,
        maxFontSize: maxFontSize,
        minFontSize: minFontSize,
        maxLines: maxLines,
      ),
    );
  }
}

class LinkButton extends StatelessWidget {
  final String redireccion;
  final String texto;
  final double ancho;
  final double alto;
  const LinkButton(
      {super.key,
      required this.redireccion,
      required this.texto,
      required this.ancho,
      required this.alto});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => context.push(redireccion),
        child: ContainerText(
            ajustar: Alignment.center,
            ajustarTexto: TextAlign.center,
            width: ancho,
            heigth: alto,
            estilo: temaApp.textTheme.bodyLarge,
            minFontSize: 8,
            maxFontSize: 18,
            title: texto,
            maxLines: 1));
  }
}

// Botón de producto
class BotonProducto extends StatelessWidget {
  const BotonProducto({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: MaterialButton(
        onPressed: () => context.push('/sellProduct'),
        height: MediaQuery.of(context).size.height * 0.2,
        minWidth: MediaQuery.of(context).size.width,
        color: colorContainerProduct2,
        elevation: 4,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(color: colorBorderContainerProduct2)),
        child: Column(
          children: [
            ContainerText(
                ajustar: Alignment.center,
                ajustarTexto: TextAlign.center,
                width: 0.5,
                heigth: 0.03,
                estilo: temaApp.textTheme.titleLarge,
                minFontSize: 8,
                maxFontSize: 18,
                title: 'Tomate Chonto',
                maxLines: 1),
            CircleAvt(
              radio: MediaQuery.of(context).size.width * 0.1,
              rutaImg: 'images/4.jpg',
            ),
            ContainerText(
                ajustar: Alignment.center,
                ajustarTexto: TextAlign.center,
                width: 0.6,
                heigth: 0.03,
                estilo: temaApp.textTheme.displayLarge,
                minFontSize: 8,
                maxFontSize: 18,
                title: 'Estado de maduración: Maduro',
                maxLines: 1),
            ContainerText(
                ajustarTexto: TextAlign.center,
                ajustar: Alignment.center,
                width: 0.5,
                heigth: 0.03,
                estilo: temaApp.textTheme.displayLarge,
                minFontSize: 8,
                maxFontSize: 18,
                title: 'Precio canasta: 20.000',
                maxLines: 1)
          ],
        ),
      ),
    );
  }
}

class ButtomWidgetIcon extends StatelessWidget {
  final Color color;
  final Icon icon;
  final String title;
  final double maximo;
  final double minimo;
  final int lineas;
  final TextStyle? estilo;
  final double ancho;
  final double alto;
  final double espaciado;
  const ButtomWidgetIcon(
      {super.key,
      required this.color,
      required this.icon,
      required this.title,
      required this.maximo,
      required this.minimo,
      required this.lineas,
      this.estilo,
      required this.ancho,
      required this.alto,
      required this.espaciado});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: color,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      minWidth: MediaQuery.of(context).size.width * ancho,
      height: MediaQuery.of(context).size.height * alto,
      child: Row(
        children: [
          icon,
          SizedBox(
            width: MediaQuery.of(context).size.width * espaciado,
          ),
          AutoSizeText(title,
              maxFontSize: maximo,
              minFontSize: minimo,
              maxLines: lineas,
              style: estilo)
        ],
      ),
    );
  }
}
