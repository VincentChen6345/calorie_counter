import 'package:calorie_counter/components/variables.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:calorie_counter/components/resusable_card.dart';
import 'package:calorie_counter/components/FoodItemCard.dart';
import 'package:calorie_counter/components/LongFoodItemCard.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  FoodCategory selectedCategory = FoodCategory.burger;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8, top: 4, bottom: 10),
                  child: ReusableCard(
                    cardColor: selectedCategory == FoodCategory.burger
                        ? activeCardColor
                        : inactiveCardColor,
                    foodIcon: FontAwesomeIcons.hamburger,
                    iconText: 'Burgers',
                    onTap: () {
                      setState(() {
                        selectedCategory = FoodCategory.burger;
                        print('card 1');
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, top: 4, bottom: 10),
                  child: ReusableCard(
                    cardColor: selectedCategory == FoodCategory.sides
                        ? activeCardColor
                        : inactiveCardColor,
                    foodIcon: FontAwesomeIcons.drumstickBite,
                    iconText: 'Sides',
                    onTap: () {
                      setState(() {
                        selectedCategory = FoodCategory.sides;
                        print('card 2');
                      });
                    },
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(bottom: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: boxShadow),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
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
                ),
              ),
            ),
          ),
          GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: boxShadow,
                  color: Color(0xFF0080EC),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Text(
                'Total Calories',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              alignment: Alignment.center,
              width: double.infinity,
              height: 60,
              margin: EdgeInsets.only(bottom: 8),
            ),
          )
        ],
      ),
    );
  }
}

enum FoodCategory { burger, sides }
