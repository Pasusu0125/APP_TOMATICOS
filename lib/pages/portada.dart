import 'package:app_t_v_1/common/tema.dart';
import 'package:app_t_v_1/structure/atoms/pantalla.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';

class Portada extends StatefulWidget {
  const Portada({super.key});

  @override
  State<Portada> createState() => _PortadaState();
}

class _PortadaState extends State<Portada> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () => context.go('/Login'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          const PantallaPortada(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.height * 0.95,
                child: AutoSizeText(
                  maxLines: 1,
                  maxFontSize: 55,
                  minFontSize: 12,
                  'APP TOMATICOS',
                  style: temaApp.textTheme.titleMedium,
                ),
              ),
              const SizedBox(height: 20),
              const SpinKitThreeBounce(
                color: Colors.white,
                size: 50.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
