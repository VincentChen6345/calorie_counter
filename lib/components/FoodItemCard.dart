import 'package:flutter/material.dart';
import 'package:calorie_counter/components/variables.dart';

class FoodItemCard extends StatelessWidget {


  String foodName;
  double foodNameSize;
  int calories;
  int counter;

  Image image;


  FoodItemCard({required this.image, required this.foodName,required this.foodNameSize, required this.calories, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        children: [
          image,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$foodName',style: TextStyle(fontSize: foodNameSize, fontWeight: FontWeight.bold),),

            ],
          ),
          Text('(${calories.toString()} cal)', style: TextStyle(
              fontSize: 20
          ),),
          Spacer(),
          Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Text('${counter.toString()}',
                style: TextStyle(fontSize: 25),),
              Row(
                children: [
                  FloatingActionButton(onPressed:(){} ,
                    mini: true,
                    backgroundColor: primary_Color,
                    foregroundColor: Colors.black,
                    child: Icon(Icons.remove),
                  ),
                  FloatingActionButton(onPressed: (){},
                    child: Icon(Icons.add),
                    backgroundColor: primary_Color,
                    foregroundColor: Colors.black,
                    mini: true,
                  )
                ],
              )

            ],
          )
        ],
      ),
    );
  }
}