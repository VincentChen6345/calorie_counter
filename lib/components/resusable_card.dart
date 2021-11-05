import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:calorie_counter/components/variables.dart';
import 'dart:core';

class ReusableCard extends StatelessWidget {

  final Color cardColor;
  final IconData foodIcon;
  final String iconText;
  final VoidCallback onTap;

  ReusableCard(
      {required this.cardColor, required this.foodIcon, required this.iconText, required this.onTap});


  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: cardColor,
          boxShadow: boxShadow
        ),
        height: 130,

        child: GestureDetector(
          onTap: onTap,
          //switch to active card colour
          // switch to burger menu display
          // ,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                foodIcon,
                size: 65,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                iconText,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              )
            ],
            //burger icon
            // text 'burger'
          ),
        ));
  }
}
