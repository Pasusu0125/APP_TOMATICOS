import 'package:app_t_v_1/common/paleta.dart';
import 'package:app_t_v_1/common/tema.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TextFielLoginCorreo extends StatelessWidget {
  final String tituloTextField;
  final double width;
  const TextFielLoginCorreo({
    super.key,
    required this.tituloTextField,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.02),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * width,
        child: TextFormField(
          autofocus: false,
          autofillHints: const [AutofillHints.email],
          obscureText: false,
          decoration: InputDecoration(
            constraints: const BoxConstraints(),
            labelText: tituloTextField,
            labelStyle: temaApp.textTheme.bodyLarge,
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(color: Colors.grey, width: 2),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(color: Colors.black, width: 2),
            ),
            suffixIcon: Icon(
              Icons.person_rounded,
              color: color3,
              size: MediaQuery.of(context).size.height * 0.03,
            ),
          ),
        ),
      ),
    );
  }
}

class TextFielLoginContrasenia1 extends StatelessWidget {
  final String texto;
  final bool funcion;
  final InkWell icono;
  final double width;

  const TextFielLoginContrasenia1({
    super.key,
    required this.texto,
    required this.funcion,
    required this.icono,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.02),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * width,
        child: TextFormField(
          autofocus: false,
          autofillHints: const [AutofillHints.email],
          obscureText: funcion,
          decoration: InputDecoration(
              labelText: texto,
              labelStyle: temaApp.textTheme.bodyLarge,
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              suffixIcon: icono),
        ),
      ),
    );
  }
}

class TextFielGlobal extends StatelessWidget {
  final String tituloTextField;
  final Icon nombreIcono;
  final double width;
  const TextFielGlobal(
      {super.key,
      required this.tituloTextField,
      required this.nombreIcono,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.02),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * width,
        child: TextFormField(
          autofocus: false,
          obscureText: false,
          decoration: InputDecoration(
              labelText: tituloTextField,
              labelStyle: temaApp.textTheme.bodyLarge,
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                borderSide: BorderSide(color: Colors.grey, width: 2),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                borderSide: BorderSide(color: Colors.black, width: 2),
              ),
              suffixIcon: nombreIcono),
        ),
      ),
    );
  }
}

// Drop down buttom
class ListaDesplegable extends StatelessWidget {
  final double wiht;
  final String tituloTextField;
  final double espacio;
  const ListaDesplegable({
    super.key,
    required this.wiht,
    required this.tituloTextField,
    required this.espacio,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.02),
      child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: const Color.fromARGB(0, 255, 193, 7),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey, width: 2)),
          width: MediaQuery.of(context).size.width * wiht,
          child: DropdownButton(
            items: const [],
            onChanged: null,
            style: temaApp.textTheme.bodyLarge,
            icon: const Icon(
              Icons.keyboard_arrow_down_sharp,
              color: color3,
            ),
            dropdownColor: Colors.white,
            borderRadius: BorderRadius.circular(15),
            hint: SizedBox(
                width: MediaQuery.of(context).size.width * espacio,
                child: AutoSizeText(
                  tituloTextField,
                  maxLines: 1,
                  maxFontSize: 18,
                  minFontSize: 8,
                  style: temaApp.textTheme.bodyLarge,
                )),
          )),
    );
  }
}
