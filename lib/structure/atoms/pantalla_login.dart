import 'package:app_t_v_1/common/tema.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class PantallaLogin extends StatelessWidget {
  final Widget objeto;
  final String titulo1;
  final String subtitulo;
  const PantallaLogin({
    super.key,
    required this.titulo1,
    required this.subtitulo,
    required this.objeto,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.30,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Image.asset(
                      "images/2.png",
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.30,
                  color: Colors.white.withOpacity(0.6),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.10),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.height * 0.09,
                          width: MediaQuery.of(context).size.width * 0.55,
                          child: AutoSizeText(
                            titulo1,
                            maxFontSize: 42,
                            maxLines: 2,
                            style: temaApp.textTheme.titleLarge,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.height * 0.04,
                          width: MediaQuery.of(context).size.width * 0.85,
                          child: AutoSizeText(
                            subtitulo,
                            maxFontSize: 22,
                            style: temaApp.textTheme.displayLarge,
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            objeto,
          ],
        ),
      ),
    );
  }
}
