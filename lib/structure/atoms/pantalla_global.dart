import 'package:flutter/material.dart';

class PantallaGlobal extends StatelessWidget {
  final Widget hijo1;
  final Widget hijo2;
  final double height;
  const PantallaGlobal({
    super.key,
    required this.hijo1,
    required this.hijo2,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    final tamanio = height;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
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
                  color: Colors.black.withOpacity(0.6),
                ),
                Column(
                  children: [hijo1, hijo2],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
