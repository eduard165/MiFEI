import 'package:flutter/material.dart';
import 'package:mi_fei/layers/layout1.dart';
import 'package:mi_fei/layers/layout2.dart';
import 'package:mi_fei/layers/registroLayer.dart';


class Registro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            //color: Color(0xFF395b64),
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

            Positioned(top: 285, right: 7, left: 7, bottom: 35, child: LayoutUno()),
            Positioned(top: 300, right: 20, left: 20, bottom: 50, child: LayoutDos()),
            Positioned(top: 320, right: 0, bottom: 48, child: RegistroLayer()),
          ],
        ),
      ),
    );
  }
}