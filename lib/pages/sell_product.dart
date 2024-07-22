import 'package:app_t_v_1/common/paleta.dart';
import 'package:app_t_v_1/common/tema.dart';
import 'package:app_t_v_1/structure/atoms/fondo_app.dart';
import 'package:app_t_v_1/structure/moleculas/action_buttons.dart';
import 'package:app_t_v_1/structure/moleculas/botones.dart';
import 'package:app_t_v_1/structure/moleculas/circle_avt.dart';
import 'package:app_t_v_1/structure/moleculas/contenerdores.dart';
import 'package:app_t_v_1/structure/moleculas/contenerdores_txt.dart';
import 'package:flutter/material.dart';

class SellProduct extends StatefulWidget {
  const SellProduct({super.key});

  @override
  State<SellProduct> createState() => _SellProductState();
}

class _SellProductState extends State<SellProduct> {
  @override
  Widget build(BuildContext context) {
    return FondoApp(
      altoFondo: 0.96,
      child: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.03,
            left: MediaQuery.of(context).size.width * 0.05,
            right: MediaQuery.of(context).size.width * 0.05),
        child: ContenedorBlanco(
          width: MediaQuery.of(context).size.width * 0.92,
          height: MediaQuery.of(context).size.height * 0.9,
          hijo: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.05,
                    left: MediaQuery.of(context).size.width * 0.04,
                    top: MediaQuery.of(context).size.height * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtomWidgetIcon(
                        color: Colors.white,
                        icon: Icon(
                          Icons.arrow_back,
                          size: MediaQuery.of(context).size.width * 0.05,
                        ),
                        espaciado: 0.02,
                        title: 'Atrás',
                        maximo: 18,
                        minimo: 14,
                        lineas: 1,
                        estilo: temaApp.textTheme.bodyLarge,
                        ancho: 0.05,
                        alto: 0.03),
                    ButtomIcon(
                      color: color3,
                      size: 0.09,
                      icon: Icons.person,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              ContainerText(
                  width: 0.8,
                  heigth: 0.08,
                  estilo: temaApp.textTheme.titleLarge,
                  minFontSize: 10,
                  maxFontSize: 18,
                  title: 'Tomate Libertador',
                  maxLines: 1,
                  ajustar: Alignment.center,
                  ajustarTexto: TextAlign.center),
              CircleAvt(
                  rutaImg: 'images/2.png',
                  radio: MediaQuery.of(context).size.width * 0.12),
              const ContainerDateProduct(width: 0.8, height: 0.24),
              ContainerText(
                  width: 0.72,
                  heigth: 0.06,
                  estilo: temaApp.textTheme.titleLarge,
                  minFontSize: 12,
                  maxFontSize: 16,
                  title: 'Descripción',
                  maxLines: 1,
                  ajustar: Alignment.centerLeft,
                  ajustarTexto: TextAlign.center),
              ContainerText(
                  width: 0.75,
                  heigth: 0.2,
                  estilo: temaApp.textTheme.displaySmall,
                  minFontSize: 12,
                  maxFontSize: 16,
                  title:
                      'Descubre el delicioso sabor y la frescura incomparable del Tomate Chonto! Este producto de alta calidad es una variedad de tomate de piel gruesa y firme, conocido por su forma redonda y su color rojo intenso. Cada tomate Chonto es cuidadosamente cultivado en condiciones óptimas para garantizar su máximo sabor y textura jugosa.',
                  maxLines: 8,
                  ajustar: Alignment.topLeft,
                  ajustarTexto: TextAlign.justify),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonWidget(
                      ruta: () {},
                      width: 0.3,
                      height: 0.06,
                      texto: 'Comprar',
                      color: colorbtn2,
                      maxFontSize: 14,
                      minFontSize: 10,
                      maxLines: 1),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  ButtonWidget(
                      ruta: () {},
                      width: 0.3,
                      height: 0.06,
                      texto: 'Ofertar',
                      color: colorbtn2,
                      maxFontSize: 14,
                      minFontSize: 10,
                      maxLines: 1),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
