import 'package:flutter/material.dart';

class FondoApp extends StatelessWidget {
  final Widget child;
  final double altoFondo;
  const FondoApp({super.key, required this.child, required this.altoFondo});

  @override
  Widget build(BuildContext context) {
    final tamanio = altoFondo;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * tamanio,
              width: MediaQuery.of(context).size.width,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.asset('images/3.jpg'),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * tamanio,
              width: MediaQuery.of(context).size.width,
              color: Colors.black.withOpacity(0.4),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
