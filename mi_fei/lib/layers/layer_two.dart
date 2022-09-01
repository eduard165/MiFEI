import 'package:flutter/material.dart';
import 'package:mi_fei/config.dart';

// ignore: use_key_in_widget_constructors
class LayerTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 399,
      height: 584,
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
        color: layerTwoBg,
        borderRadius: const BorderRadius.all(
            Radius.circular(20),
        ),
      ),
    );
  }
}