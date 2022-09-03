// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

// ignore: use_key_in_widget_constructors
class ImageSliderRegis extends StatelessWidget{
  @override
  // ignore: override_on_non_overriding_member
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(1)
          ),
          SizedBox(
            height: 15,
          ),
          CarouselSlider(items: [
            Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(image: AssetImage("assets/images/1.png"),
              fit: BoxFit.contain,
              )
              ),
          ),
            Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(image: AssetImage("assets/images/2.png"),
              fit: BoxFit.contain,
              ),
              ),
            ),
            Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              // ignore: prefer_const_literals_to_create_immutables
              image: DecorationImage(image: AssetImage("assets/images/3.png"),
              fit: BoxFit.contain,
              ),
              ),
            ),
          ], 
          options: CarouselOptions(
            height: 190.0,
            autoPlay: true,
            autoPlayCurve: Curves.easeOut,
            enlargeCenterPage: true,
            autoPlayInterval: Duration(seconds: 3),
            scrollDirection: Axis.horizontal),
          ),
        ],
      ),
    );
  }
}