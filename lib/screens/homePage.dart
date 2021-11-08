import 'package:calorie_counter/components/variables.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:calorie_counter/components/resusable_card.dart';
import 'package:calorie_counter/components/burgerMenu.dart';
import 'package:calorie_counter/components/sidesMenu.dart';
import 'package:calorie_counter/components/BottomButton.dart';
import 'package:calorie_counter/screens/resultsPage.dart';
import 'package:calorie_counter/components/Calculator_Brain.dart';

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
                child:
                    // BurgerMenu()
                    selectedCategory == FoodCategory.burger
                        ? BurgerMenu()
                        : sidesMenu(),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: BottomButton(
                  text: 'Total Calories',
                  onPressed: () {
                    setState(() {
                      //navigate to second page
                      CalculatorBrain calc = CalculatorBrain(
                          bigMacCount: bigMacCount,
                          cheeseBurgerCount: cheeseBurgerCount,
                          chickenBurgerCount: chickenBurgerCount,
                          quarterPounderCount: quarterPounderCount,
                          largeFriesCount: largeFriesCount,
                          chickenNuggetCount: chickenNuggetCount,
                          largeCokeCount: largeCokeCount,
                          softServeCount: softServeCount);

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResultsPage(
                                    calorieSum: calc.calculateCalories(),
                                    resultText: calc.displayMessage(),
                                  )));
                    });
                  },
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: BottomButton(
                    onPressed: () {
                      setState(() {
                        reset();
                      });
                    },
                    text: 'Reset'),
              )
            ],
          )
        ],
      ),
    );
  }
}

enum FoodCategory { burger, sides }
