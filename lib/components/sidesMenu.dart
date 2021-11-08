import 'package:flutter/material.dart';
import 'package:calorie_counter/components/variables.dart';
import 'package:calorie_counter/components/LongFoodItemCard.dart';

class sidesMenu extends StatefulWidget {



  @override
  _sidesMenuState createState() => _sidesMenuState();
}

class _sidesMenuState extends State<sidesMenu> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        LongFoodItemCard(
          image: assetImage('large_fries.png', 70, 70),
          calories: 366,
          foodName: 'Large',
          foodNameUnder: 'Fries',

          increase: () {
            setState(() {
              largeFriesCount++;
            });
          },
          decrease:  () {
            setState(() {
              if (largeFriesCount>=1)
                largeFriesCount--;
            });
          },
          counterText: '${largeFriesCount.toStringAsFixed(0)}',

        ),
        // SizedBox(
        //   width: double.infinity,
        //   height: 1,
        //   child: Container(
        //     color: Color(0xff2C000000),
        //   ),
        // ),
        // LongFoodItemCard(
        //   image: assetImage('chicken_nuggets.png', 80, 80),
        //   calories: 42,
        //   foodName: '1 Chicken',
        //   foodNameUnder: 'Nugget',
        //   counter: chickenNuggetCount,
        //   increase: () {
        //     setState(() {
        //       chickenNuggetCount++;
        //     });
        //   },
        //   decrease:  () {
        //     setState(() {
        //       if (chickenNuggetCount>=1)
        //         chickenNuggetCount--;
        //     });
        //   },
        //   counterName: chickenNuggetCount,
        //   foodNameSize: 20,
        // ),
        // SizedBox(
        //   width: double.infinity,
        //   height: 1,
        //   child: Container(
        //     color: Color(0xff2C000000),
        //   ),
        // ),
        // LongFoodItemCard(
        //     image: assetImage('large_coke.png', 80, 75),
        //     foodName: 'Large',
        //     foodNameUnder: 'Coke',
        //     foodNameSize: 20,
        //     calories: 224,
        //     increase: () {
        //       setState(() {
        //         largeCokeCount++;
        //       });
        //     },
        //     decrease:  () {
        //       setState(() {
        //         if (largeCokeCount>=1)
        //           largeCokeCount--;
        //       });
        //     },
        //     counterName: largeCokeCount,
        //     counter: largeCokeCount),
        // SizedBox(
        //   width: double.infinity,
        //   height: 1,
        //   child: Container(
        //     color: Color(0xff2C000000),
        //   ),
        // ),
        // LongFoodItemCard(
        //     image: assetImage('soft_serve.png', 90, 80),
        //     foodName: 'Soft',
        //     foodNameUnder: 'Serve',
        //     foodNameSize: 20,
        //     calories: 200,
        //     increase: () {
        //       setState(() {
        //         softServeCount++;
        //       });
        //     },
        //     decrease:  () {
        //       setState(() {
        //         if (softServeCount>=1)
        //           softServeCount--;
        //       });
        //     },
        //     counterName: softServeCount,
        //     counter: softServeCount)
      ],
    );
  }
}
