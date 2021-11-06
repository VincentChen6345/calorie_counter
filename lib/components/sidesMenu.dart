import 'package:flutter/material.dart';
import 'package:calorie_counter/components/variables.dart';
import 'package:calorie_counter/components/FoodItemCard.dart';
import 'package:calorie_counter/components/LongFoodItemCard.dart';


class sidesMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FoodItemCard(
          image: assetImage('large_fries.png', 70, 70),

          calories: 366,
          foodName: 'Large Fries',
          counter: 0,
          foodNameSize: 25,
        ),
        SizedBox(
          width: double.infinity,
          height: 1,
          child: Container(
            color: Color(0xff2C000000),
          ),
        ),
        LongFoodItemCard(
          image: assetImage('chicken_nuggets.png', 80, 80),
          calories: 42,
          foodName: '1 Chicken',
          foodNameUnder: 'Nugget',
          counter: 0,
          foodNameSize: 23,
        ),
        SizedBox(
          width: double.infinity,
          height: 1,
          child: Container(
            color: Color(0xff2C000000),
          ),
        ),
        FoodItemCard(
            image: assetImage('large_coke.png', 80, 75),
            foodName: 'Large Coke',
            foodNameSize: 25,
            calories: 224,
            counter: 0),
        SizedBox(
          width: double.infinity,
          height: 1,
          child: Container(
            color: Color(0xff2C000000),
          ),
        ),
        FoodItemCard(
            image: assetImage('soft_serve.png', 90, 90),
            foodName: 'Soft Serve',
            foodNameSize: 23,
            calories: 200,
            counter: 0)
      ],
    );
  }
}