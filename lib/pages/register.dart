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
import 'package:go_router/go_router.dart';

var nombre = TextEditingController();
var apellido = TextEditingController();
var rolId = 0; // Variable para almacenar el ID del rol seleccionado
var celular = TextEditingController();
var identificacion = TextEditingController();
var contrasena = TextEditingController();
var confirmacionContrasena = TextEditingController();

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool isVisible = false;
  bool isVisible1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PantallaGlobal(
          height: 1.1,
          hijo1: Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .02,
                bottom: MediaQuery.of(context).size.height * .02),
            child: ContenedorBlanco(
              width: MediaQuery.of(context).size.width * 0.85,
              height: MediaQuery.of(context).size.height * 0.20,
              hijo: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.035,
                    ),
                    child: CircleAvt(
                        rutaImg: 'images/img1_Registrar.jpg',
                        radio: MediaQuery.of(context).size.height * 0.065),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .035),
                    child: ContainerText(
                        ajustar: Alignment.center,
                        ajustarTexto: TextAlign.center,
                        width: 0.38,
                        heigth: 0.1,
                        estilo: temaApp.textTheme.titleSmall,
                        minFontSize: 20,
                        maxFontSize: 24,
                        title: '¡Únete a App Tomaticos!',
                        maxLines: 3),
                  ),
                ],
              ),
            ),
          ),
          hijo2: ContenedorBlanco(
            width: MediaQuery.of(context).size.width * 0.85,
            height: MediaQuery.of(context).size.height * 0.85,
            hijo: Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.05,
              ),
              child: Column(
                children: [
                  const TextFielLoginCorreo(
                      width: 0.75, tituloTextField: 'NOMBRE'),
                  const TextFielLoginCorreo(
                      width: 0.75, tituloTextField: 'APELLIDO'),
                  TextFielGlobal(
                    tituloTextField: 'CELULAR',
                    nombreIcono: Icon(
                      Icons.phone,
                      color: color3,
                      size: MediaQuery.of(context).size.height * 0.03,
                    ),
                    width: 0.75,
                  ),
                  const ListaDesplegable(
                      espacio: 0.62, wiht: 0.75, tituloTextField: 'ROL'),
                  const TextFielLoginCorreo(
                      width: 0.75, tituloTextField: 'CORREO'),
                  TextFielLoginContrasenia1(
                    width: 0.75,
                    texto: 'CONTRASEÑA',
                    funcion: !isVisible,
                    icono: InkWell(
                      onTap: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      child: Ink(
                        child: isVisible
                            ? Icon(
                                Icons.visibility,
                                color: color3,
                                size: MediaQuery.of(context).size.height * 0.03,
                              )
                            : Icon(
                                Icons.visibility_off,
                                color: color3,
                                size: MediaQuery.of(context).size.height * 0.03,
                              ),
                      ),
                    ),
                  ),
                  TextFielLoginContrasenia1(
                    width: 0.75,
                    texto: 'CONFIRMAR CONTRASEÑA',
                    funcion: !isVisible,
                    icono: InkWell(
                      onTap: () {
                        setState(() {
                          isVisible1 = !isVisible1;
                        });
                      },
                      child: Ink(
                        child: isVisible1
                            ? Icon(
                                Icons.visibility,
                                color: color3,
                                size: MediaQuery.of(context).size.height * 0.03,
                              )
                            : Icon(
                                Icons.visibility_off,
                                color: color3,
                                size: MediaQuery.of(context).size.height * 0.03,
                              ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const OurCheckBoxLogin(),
                        ContainerText(
                            ajustar: Alignment.center,
                            ajustarTexto: TextAlign.justify,
                            width: 0.55,
                            heigth: 0.08,
                            estilo: temaApp.textTheme.bodyLarge,
                            minFontSize: 10,
                            maxFontSize: 18,
                            title:
                                'Acepto las políticas de seguridad y tratamiento de datos.',
                            maxLines: 2)
                      ],
                    ),
                  ),
                  ButtonWidget(
                    ruta: () => context.go('/Login'),
                    width: 0.7,
                    height: 0.05,
                    texto: 'REGISTRAR',
                    color: colorbtn2,
                    maxFontSize: 18,
                    minFontSize: 8,
                    maxLines: 1,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
