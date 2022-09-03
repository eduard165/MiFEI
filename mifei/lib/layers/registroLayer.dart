// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:mifei/config.dart';
import 'package:mifei/pantallas/IniciarSesion.dart';

class RegistroLayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // controladores de los inputs

    return Container(
      height: 584,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 45,
            top: 30,
            child: Text(
              'Correo',
              style: TextStyle(
                  fontFamily: 'Poppins-Medium',
                  fontSize: 24,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Positioned(
              left: 45,
              top: 60,
              child: Container(
                width: 310,
                child: TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Ingrese su correo',
                    hintStyle: TextStyle(color: hintText),
                  ),
                ),
              )),

          Positioned(
            left: 45,
            top: 140,
            child: Text(
              'Contraseña',
              style: TextStyle(
                  fontFamily: 'Poppins-Medium',
                  fontSize: 24,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Positioned(
              left: 45,
              top: 170,
              child: Container(
                width: 310,
                child: TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Ingrese su contraseña',
                    hintStyle: TextStyle(color: hintText),
                  ),
                ),
              )),
          Positioned(
            right: 140,
            top: 310,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IniciarSesion()),
                );
              },
              style: TextButton.styleFrom(
                      primary: Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: Color.fromARGB(255, 89, 63, 160),
                    ),
              child: Text(
                'Registrarse',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontFamily: 'Poppins-Medium',
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),

          Positioned(
            right: 100,
            top: 370,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IniciarSesion()),
                );
              },
              child: Text(
                '¿Ya tienes una cuenta?',
                style: TextStyle(
                    color: Color.fromARGB(255, 89, 63, 160),
                    fontFamily: 'Poppins-Medium',
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Positioned(
              top: 420,
              left: 50,
              child: Container(
                height: 0.5,
                width: 310,
                color: inputBorder,
              )),
        ],
      ),
    );
  }
}
