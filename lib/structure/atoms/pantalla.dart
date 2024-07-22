import 'package:flutter/material.dart';

class PantallaPortada extends StatelessWidget {
  const PantallaPortada({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: FittedBox(
                  fit: BoxFit.cover, child: Image.asset("images/1.jpeg")),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.black.withOpacity(0.6),
            ),
          ],
        ),
      ),
    );
  }
}
