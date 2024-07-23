import 'package:app_t_v_1/common/paleta.dart';
import 'package:app_t_v_1/structure/moleculas/botones.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PublicProduct extends StatefulWidget {
  const PublicProduct({super.key});

  @override
  State<PublicProduct> createState() => _PublicProductState();
}

class _PublicProductState extends State<PublicProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(0, 0, 0, 0),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.02,
            left: MediaQuery.of(context).size.width * 0.02,
            right: MediaQuery.of(context).size.width * 0.02,
            bottom: MediaQuery.of(context).size.width * 0.02,
          ),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.75,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(214, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListView(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.04,
                      right: MediaQuery.of(context).size.width * 0.08,
                      left: MediaQuery.of(context).size.width * 0.08),
                  children: const [
                    BotonProducto(),
                    BotonProducto(),
                    BotonProducto(),
                    BotonProducto(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.01),
                child: ButtonWidget(
                    ruta: () => context.push('/registerProduct'),
                    width: 0.1,
                    height: 0.05,
                    texto: 'VENDER',
                    color: colorbtn2,
                    maxFontSize: 16,
                    minFontSize: 8,
                    maxLines: 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
