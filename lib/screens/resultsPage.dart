import 'package:calorie_counter/components/BottomButton.dart';
import 'package:flutter/material.dart';
import 'package:calorie_counter/components/variables.dart';

class ResultsPage extends StatelessWidget {
  final String calorieSum;
  final String resultText;

  ResultsPage({required this.calorieSum, required this.resultText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Center(
            child: Text(
          "McDonald's Calorie Counter",
          style: TextStyle(
            color: Colors.black,
          ),
        )),
        backgroundColor: primary_Color,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      boxShadow: boxShadow,
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          'TOTAL CALORIES',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            calorieSum,
                            style: TextStyle(
                                fontSize: 80, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'cal',
                            style: TextStyle(fontSize: 30),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          resultText,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: Column(
                          children: [
                            Text(
                              'Average daily intake for men is 2500 calories',
                              textAlign: TextAlign.center,
                              style: adviceTextStyle,
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              'Average daily intake for women is 2000 calories',
                              textAlign: TextAlign.center,
                              style: adviceTextStyle,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            BottomButton(
              onPressed: () {
                Navigator.pop(context);
              },
              text: 'Recalculate',
            )
          ],
        ),
      ),
    );
  }
}
