// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mi_fei/config.dart';

// ignore: use_key_in_widget_constructors
class LayoutUno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 654,
      decoration: BoxDecoration(
        color: layerOneBg,
        borderRadius: BorderRadius.all(
            Radius.circular(20)
        ),
      ),
    );
  }
}