import 'package:app_t_v_1/common/paleta.dart';
import 'package:app_t_v_1/common/tema.dart';
import 'package:app_t_v_1/structure/moleculas/contenerdores_txt.dart';
import 'package:app_t_v_1/structure/atoms/pantalla_login.dart';
import 'package:app_t_v_1/structure/moleculas/text_fields.dart';
import 'package:app_t_v_1/structure/moleculas/action_buttons.dart';
import 'package:app_t_v_1/structure/moleculas/botones.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PantallaLogin(
            titulo1: "Iniciar Sesión",
            subtitulo: "Utilice su cuenta para iniciar sesión",
            objeto: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05),
                  child: Column(
                    children: [
                      const TextFielLoginCorreo(
                        width: 0.85,
                        tituloTextField: 'CORREO',
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.005),
                        child: TextFielLoginContrasenia1(
                          width: 0.85,
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
                                      size: MediaQuery.of(context).size.height *
                                          0.03,
                                    )
                                  : Icon(
                                      Icons.visibility_off,
                                      color: color3,
                                      size: MediaQuery.of(context).size.height *
                                          0.03,
                                    ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.015),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width *
                                      0.036),
                              child: const OurCheckBoxLogin(),
                            ),
                            ContainerText(
                              width: 0.3,
                              heigth: 0.03,
                              estilo: temaApp.textTheme.bodyLarge,
                              minFontSize: 8,
                              maxFontSize: 18,
                              title: 'Recuérdame',
                              maxLines: 1,
                              ajustar: Alignment.centerLeft,
                              ajustarTexto: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.04),
                        child: ButtonWidget(
                          ruta: () => context.push('/Menu'),
                          width: MediaQuery.of(context).size.width * 0.65,
                          height: MediaQuery.of(context).size.height * 0.07,
                          texto: 'Iniciar Sesión',
                          color: colorbtn2,
                          maxFontSize: 18,
                          minFontSize: 8,
                          maxLines: 1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.04),
                        child: const LinkButton(
                          texto: '¿Olvidó su contraseña?',
                          alto: 0.05,
                          ancho: 0.50,
                          redireccion: '',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.02),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ContainerText(
                                width: 0.45,
                                heigth: 0.03,
                                estilo: temaApp.textTheme.bodyLarge,
                                minFontSize: 8,
                                maxFontSize: 18,
                                title: '¿Aún no tienes una cuenta?',
                                maxLines: 1,
                                ajustar: Alignment.centerLeft,
                                ajustarTexto: TextAlign.center,
                              ),
                              const LinkButton(
                                texto: 'Registrate',
                                alto: 0.03,
                                ancho: 0.3,
                                redireccion: '/register',
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
