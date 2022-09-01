// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers

/*

parte del codigo usado para el image slider

import 'package:flutter/material.dart';
import 'package:mi_fei/registroSlider.dart';

void main(){
  runApp(MaterialApp(home: MiFEI()));
}

// ignore: use_key_in_widget_constructors
class MiFEI extends StatefulWidget{
  @override
  State<MiFEI> createState() => _MiFEI();
}

class _MiFEI extends State<MiFEI>{
  int index = 0;
  final pantallas = [
    ImageSliderRegis()
  ];
  @override
  Widget build(BuildContext context){
    // ignore: prefer_const_constructors
    return Scaffold(
      body: pantallas[index]
    );
  }
}
*/
import 'package:flutter/material.dart';
import 'package:mi_fei/layers/layer_one.dart';
import 'package:mi_fei/layers/layer_three.dart';
import 'package:mi_fei/layers/layer_two.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: 'Poppins',
    ),
    debugShowCheckedModeBanner: false,
    home: MiFEI(),
  ));
}

class MiFEI extends StatelessWidget {
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

            Positioned(top: 285, right: 7, left: 7, bottom: 35, child: LayerOne()),
            Positioned(top: 300, right: 20, left: 20, bottom: 50, child: LayerTwo()),
            Positioned(top: 320, right: 0, bottom: 48, child: LayerThree()),
          ],
        ),
      ),
    );
  }
}
