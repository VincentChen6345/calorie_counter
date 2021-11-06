import 'package:flutter/material.dart';
import 'package:calorie_counter/components/variables.dart';
import 'package:calorie_counter/components/FoodItemCard.dart';
import 'package:calorie_counter/components/LongFoodItemCard.dart';


class BurgerMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FoodItemCard(
          image: assetImage('big_mac.png', 70, 70),

          calories: 550,
          foodName: 'Big Mac',
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
          image: assetImage('cheeseburger.png', 80, 80),
          calories: 313,
          foodName: 'Cheese',
          foodNameUnder: 'Burger',
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
            image: assetImage('Mc_Chicken.png', 75, 75),
            foodName: 'McChicken',
            foodNameSize: 25,
            calories: 357,
            counter: 0),
        SizedBox(
          width: double.infinity,
          height: 1,
          child: Container(
            color: Color(0xff2C000000),
          ),
        ),
        LongFoodItemCard(
            image: assetImage('quarter_pounder.png', 90, 90),
            foodName: 'Quarter',
            foodNameUnder: 'Pounder',
            foodNameSize: 23,
            calories: 417,
            counter: 0)
      ],
    );
  }
}