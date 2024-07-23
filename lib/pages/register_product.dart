import 'package:app_t_v_1/common/paleta.dart';
import 'package:app_t_v_1/common/tema.dart';
import 'package:app_t_v_1/structure/atoms/pantalla_global.dart';
import 'package:app_t_v_1/structure/moleculas/action_buttons.dart';
import 'package:app_t_v_1/structure/moleculas/botones.dart';
import 'package:app_t_v_1/structure/moleculas/circle_avt.dart';
import 'package:app_t_v_1/structure/moleculas/contenerdores.dart';
import 'package:app_t_v_1/structure/moleculas/contenerdores_txt.dart';
import 'package:app_t_v_1/structure/moleculas/text_fields.dart';
import 'package:flutter/material.dart';

var nombreProducto = TextEditingController();
var cantidadCanastas = TextEditingController();
var descripcion = TextEditingController();
var estadoMaduracion =
    0; // Variable para almacenar el estado de maduración escogido
var fertilizantesUsados = 0; // Variable para almacenar el fertilizante escogido
var fechaCosecha = TextEditingController();
var fechaCaducidad =
    0; // Variable para almacenar la fecha de caducidad a partir de fertilizantes usados yfecha de cosecha
var precioCanasta = TextEditingController();

class RegisterProduct extends StatefulWidget {
  const RegisterProduct({super.key});

  @override
  State<RegisterProduct> createState() => _RegisterProductState();
}

class _RegisterProductState extends State<RegisterProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PantallaGlobal(
          height: 1.35,
          hijo1: Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.05,
              bottom: MediaQuery.of(context).size.height * 0.02,
            ),
            child: ContenedorBlanco(
              width: MediaQuery.of(context).size.width * 0.85,
              height: MediaQuery.of(context).size.height * 0.20,
              hijo: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.018,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvt(
                      radio: MediaQuery.of(context).size.width * 0.1,
                      rutaImg: 'images/1.jpeg',
                    ),
                    ContainerText(
                      width: 0.7,
                      heigth: 0.07,
                      estilo: temaApp.textTheme.titleLarge,
                      minFontSize: 12,
                      maxFontSize: 18,
                      title:
                          '¡Hola, este espacio fue diseñado para que pueda publicar sus productos!',
                      maxLines: 2,
                      ajustar: Alignment.center,
                      ajustarTexto: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          hijo2: ContenedorBlanco(
            width: MediaQuery.of(context).size.width * 0.85,
            height: MediaQuery.of(context).size.height * 1.02,
            hijo: Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.03,
              ),
              child: Column(
                children: [
                  ContainerText(
                    width: 0.5,
                    heigth: 0.03,
                    estilo: temaApp.textTheme.displayLarge,
                    minFontSize: 12,
                    maxFontSize: 16,
                    title: 'FOTO DEL PRODUCTO',
                    maxLines: 1,
                    ajustar: Alignment.center,
                    ajustarTexto: TextAlign.center,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvt(
                          radio: MediaQuery.of(context).size.width * 0.08,
                          rutaImg: 'images/1.jpeg',
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.04),
                          child: ButtomIcon(
                            color: Colors.black,
                            size: 0.08,
                            icon: Icons.camera_alt_rounded,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  const TextFielGlobal(
                    tituloTextField: 'NOMBRE PRODUCTO',
                    nombreIcono: Icon(
                      Icons.add_shopping_cart_outlined,
                      color: color3,
                    ),
                    width: 0.7,
                  ),
                  const TextFielGlobal(
                    tituloTextField: 'CANTIDAD (CANASTA)',
                    nombreIcono: Icon(
                      Icons.shopping_basket,
                      color: color3,
                    ),
                    width: 0.7,
                  ),
                  ContainerText(
                      width: 0.7,
                      heigth: 0.03,
                      estilo: temaApp.textTheme.displayMedium,
                      minFontSize: 8,
                      maxFontSize: 12,
                      title: '* Opcional',
                      maxLines: 1,
                      ajustar: Alignment.centerLeft,
                      ajustarTexto: TextAlign.center),
                  const TextFielGlobal(
                      tituloTextField: 'DESCRIPCIÓN)',
                      nombreIcono: Icon(
                        Icons.reorder,
                        color: color3,
                      ),
                      width: 0.7),
                  const ListaDesplegable(
                    wiht: 0.7,
                    tituloTextField: 'ESTADO DE MADURACIÓN',
                    espacio: 0.56,
                  ),
                  const ListaDesplegable(
                    wiht: 0.7,
                    tituloTextField: 'FERTILIZANTES USADOS',
                    espacio: 0.56,
                  ),
                  const TextFielGlobal(
                      tituloTextField: 'FECHA DE COSECHA',
                      nombreIcono: Icon(
                        Icons.calendar_month,
                        color: color3,
                      ),
                      width: 0.7),
                  ContainerText(
                    width: 0.7,
                    heigth: 0.03,
                    estilo: temaApp.textTheme.bodyLarge,
                    minFontSize: 8,
                    maxFontSize: 12,
                    title: 'FECHA DE CADUCIDAD',
                    maxLines: 1,
                    ajustar: Alignment.centerLeft,
                    ajustarTexto: TextAlign.center,
                  ),
                  const TextFielGlobal(
                      tituloTextField: 'dd/mm/aa',
                      nombreIcono: Icon(
                        Icons.date_range_outlined,
                        color: color3,
                      ),
                      width: 0.7),
                  const TextFielGlobal(
                      tituloTextField: 'PRECIO CANASTA',
                      nombreIcono: Icon(
                        Icons.attach_money,
                        color: color3,
                      ),
                      width: 0.7),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonWidget(
                        ruta: () {
                          Navigator.pop(context);
                        },
                        width: 0.3,
                        height: 0.05,
                        texto: 'CANCELAR',
                        color: colorbtnCancelar,
                        maxFontSize: 14,
                        minFontSize: 10,
                        maxLines: 1,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.04,
                      ),
                      ButtonWidget(
                        ruta: () {},
                        width: 0.3,
                        height: 0.05,
                        texto: 'PUBLICAR',
                        color: colorbtn1,
                        maxFontSize: 14,
                        minFontSize: 10,
                        maxLines: 1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
