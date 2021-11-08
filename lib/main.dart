import 'package:calorie_counter/components/variables.dart';
import 'package:flutter/material.dart';
import 'screens/homePage.dart';
import 'package:flutter/services.dart';
import 'components/variables.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.light().copyWith(
      primaryColor: primary_Color,
      scaffoldBackgroundColor: backgroundColor,
      textTheme: TextTheme(
        bodyText2:TextStyle(
          color: Colors.black,
        )
      )

    ),
    home:Scaffold(
      appBar: AppBar(
        title: Center(child: Text("McDonald's Calorie Counter",
          style: TextStyle(
            color: Colors.black,
          ),)),
        backgroundColor: primary_Color,
      ),
      body: homePage(),
    ),
  ));
}
