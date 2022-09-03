// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:mifei/layers/layout1.dart';
import 'package:mifei/layers/layout2.dart';
import 'package:mifei/layers/registroLayer.dart';

class Registro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage('assets/images/fondo.jpg'),
          fit: BoxFit.cover,
        )),
        child: Stack(
          children: <Widget>[
            Positioned(
                top: 140,
                left: 70,
                child: Container(
                  child: Text(
                    'Registrarse',
                    style: TextStyle(
                        fontSize: 48,
                        fontFamily: 'Poppins-Medium',
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                )),
            Positioned(top: 300, right: 7, left: 7, bottom: 35, child: LayoutUno()),
            Positioned(top: 320, right: 20, left: 20, bottom: 48, child: LayoutDos()),
            Positioned(top: 320, right: 0, bottom: 48, child: RegistroLayer()),
          ],
        ),
      ),
    );
  }
}
