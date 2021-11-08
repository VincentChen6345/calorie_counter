import 'package:flutter/material.dart';
import 'package:calorie_counter/components/variables.dart';

class LongFoodItemCard extends StatefulWidget {
  String foodName;
  String foodNameUnder;

  int calories;

  void Function() increase;
  void Function() decrease;

  String counterText;

  Image image;

  LongFoodItemCard({
    required this.counterText,
    required this.increase,
    required this.decrease,
    required this.image,
    required this.foodNameUnder,
    required this.foodName,
    required this.calories,
  });

  @override
  _LongFoodItemCardState createState() => _LongFoodItemCardState();
}

class _LongFoodItemCardState extends State<LongFoodItemCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        children: [
          widget.image,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${widget.foodName}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                '${widget.foodNameUnder}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text(
            '(${widget.calories.toString()} cal)',
            style: TextStyle(fontSize: 20),
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.counterText,
                style: TextStyle(fontSize: 25),
              ),
              Row(
                children: [
                  FloatingActionButton(
                    onPressed: widget.decrease,
                    heroTag: null,
                    mini: true,
                    backgroundColor: primary_Color,
                    foregroundColor: Colors.black,
                    child: Icon(Icons.remove),
                  ),
                  FloatingActionButton(
                    onPressed: widget.increase,
                    heroTag: null,
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

// setState(() {
// if(widget.counter>=1)
// widget.counter--;
// widget.counterName=widget.counter;
//
//
// });
