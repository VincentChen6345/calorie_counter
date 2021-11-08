import 'package:flutter/material.dart';
import 'package:calorie_counter/components/variables.dart';
import 'package:calorie_counter/components/LongFoodItemCard.dart';
import 'package:calorie_counter/screens/homePage.dart';
import 'package:calorie_counter/components/Calculator_Brain.dart';

class BurgerMenu extends StatefulWidget {
  @override
  _BurgerMenuState createState() => _BurgerMenuState();
}

class _BurgerMenuState extends State<BurgerMenu> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        LongFoodItemCard(
          image: assetImage('big_mac.png', 70, 70),
          calories: 550,
          foodName: 'Big',
          foodNameUnder: "Mac",

          counterText: '${bigMacCount.toStringAsFixed(0)}',
          increase: () {
            setState(() {
               bigMacCount++;

            });
          },
          decrease:  () {
            setState(() {
              if (bigMacCount>=1)
              bigMacCount--;
            });
          },


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
          counterText: '${cheeseBurgerCount.toStringAsFixed(0)}',
          increase: () {
            setState(() {
              cheeseBurgerCount++;
            });
          },
          decrease:  () {
            setState(() {
              if (cheeseBurgerCount>=1)
                cheeseBurgerCount--;
            });
          },
        ),
        SizedBox(
          width: double.infinity,
          height: 1,
          child: Container(
            color: Color(0xff2C000000),
          ),
        ),
        LongFoodItemCard(
            image: assetImage('Mc_Chicken.png', 75, 75),
            foodName: 'Chicken',
            foodNameUnder: 'Burger',
          counterText: '${chickenBurgerCount.toStringAsFixed(0)}',
            calories: 357,
            increase: () {
              setState(() {
                chickenBurgerCount++;
              });
            },
            decrease:  () {
              setState(() {
                if (chickenBurgerCount>=1)
                  chickenBurgerCount--;
              });
            },

  ),
        SizedBox(
          width: double.infinity,
          height: 1,
          child: Container(
            color: Color(0xff2C000000),
          ),
        ),
        LongFoodItemCard(
            image: assetImage('quarter_pounder.png', 80, 80),
            foodName: 'Quarter',
            foodNameUnder: 'Pounder',
          counterText: '${quarterPounderCount.toStringAsFixed(0)}',
            calories: 417,
            increase: () {
              setState(() {
                quarterPounderCount++;
              });
            },
            decrease:  () {
              setState(() {
                if (quarterPounderCount>=1)
                  quarterPounderCount--;
              });
            },
           )
      ],
    );
  }
}
