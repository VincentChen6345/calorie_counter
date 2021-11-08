import 'package:flutter/material.dart';
import 'package:calorie_counter/components/variables.dart';

class BottomButton extends StatelessWidget {
var onPressed;
String text;

BottomButton({required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            boxShadow: boxShadow,
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Text(
          text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
          color: primary_Color),
        ),
        alignment: Alignment.center,
        // width: double.infinity,
        height: 60,
        margin: EdgeInsets.only(bottom: 8),
      ),
    );
  }
}
