// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:mi_fei/config.dart';

class LayerThree extends StatelessWidget {
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
              right: 100,
              top: 320,
              child: Text(
                '¿Olvidaste tu contraseña?',
                style: TextStyle(
                    color: forgotPasswordText,
                    fontSize: 16,
                    fontFamily: 'Poppins-Medium',
                    fontWeight: FontWeight.w600),
              )),
          Positioned(
              top: 360,
              right: 150,
              child: Container(
                width: 99,
                height: 35,
                decoration: BoxDecoration(
                  color: signInButton,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20)
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Text(
                    'Iniciar',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Poppins-Medium',
                        fontWeight: FontWeight.w400),
                  ),
                ),
              )),
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
