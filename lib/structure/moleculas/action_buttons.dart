import 'package:app_t_v_1/common/paleta.dart';
import 'package:flutter/material.dart';

class OurCheckBoxLogin extends StatefulWidget {
  const OurCheckBoxLogin({super.key});

  @override
  State<OurCheckBoxLogin> createState() => _OurCheckBoxLoginState();
}

class _OurCheckBoxLoginState extends State<OurCheckBoxLogin> {
  bool _aceptoTerminos = false;

  @override
  Widget build(BuildContext context) {
    void mostrarTerminos() {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Términos y Condiciones'),
          content: const SingleChildScrollView(
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget tortor risus. Donec rutrum congue leo eget malesuada. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Sed neque sem, imperdiet sit amet lacus sit amet, ultricies aliquam risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Donec rutrum congue leo eget malesuada.',
              style: TextStyle(fontSize: 16),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Aceptar'),
            ),
          ],
        ),
      );
    }

    return Checkbox(
      checkColor: Colors.white,
      focusColor: color3,
      value: _aceptoTerminos,
      onChanged: (value) {
        setState(() {
          _aceptoTerminos = value!;
          if (value) mostrarTerminos();
        });
      },
      activeColor: color3,
    );
  }
}

class ButtomIcon extends StatelessWidget {
  final Function()? onPressed;
  final IconData? icon;
  final Color color;
  final double size;
  const ButtomIcon({
    super.key,
    this.onPressed,
    this.icon,
    required this.color,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: color,
        size: MediaQuery.of(context).size.width * size,
      ),
    );
  }
}
