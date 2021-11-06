import 'package:flutter/material.dart';

const primary_Color= Color(0xffFFBC0E);

const backgroundColor=Color(0xFFDB0006);

const activeCardColor= primary_Color;
const inactiveCardColor=Color(0xFFFFD982);

Image assetImage(String assetName,double height, double width){return Image.asset('assets/$assetName',
  height: height, width: width,); }

List<BoxShadow> boxShadow=[BoxShadow(
    color: Colors.black.withOpacity(0.3),
    spreadRadius: 2,
    blurRadius: 2,
    offset: Offset(3,3)
)];