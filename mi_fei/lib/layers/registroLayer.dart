// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:mi_fei/config.dart';
import 'package:mi_fei/pantallas/IniciarSesion.dart';

class RegistroLayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 584,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          // ignore: prefer_const_constructors
          Positioned(
            left: 45,
            top: 0,
            child: Text(
              'Usuario',
              style: TextStyle(
                  fontFamily: 'Poppins-Medium',
                  fontSize: 24,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Positioned(
              left: 45,
              top: 30,
              child: Container(
                width: 310,
                child: TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Ingrese su usuario',
                    hintStyle: TextStyle(color: hintText),
                  ),
                ),
              )),
          Positioned(
            left: 45,
            top: 100,
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
              top: 130,
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
            left: 45,
            top: 200,
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
              top: 230,
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
            right: 140,
            top: 320,
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
              top: 432,
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
