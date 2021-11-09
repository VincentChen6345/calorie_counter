
class CalculatorBrain {
  CalculatorBrain(
      {required this.bigMacCount,
      required this.cheeseBurgerCount,
      required this.chickenBurgerCount,
      required this.quarterPounderCount,
      required this.largeFriesCount,
      required this.chickenNuggetCount,
      required this.largeCokeCount,
      required this.softServeCount});

///////////////BURGER ITEM COUNTERS
  final int bigMacCount;
  final int cheeseBurgerCount;
  final int chickenBurgerCount;
  final int quarterPounderCount;

///////////////SIDES COUNTERS
  final int largeFriesCount;
  final int chickenNuggetCount;
  final int largeCokeCount;
  final int softServeCount;

  double  _calorieSum=0;
  String calculateCalories() {
    double largeFriesSum = largeFriesCount * 366;
    double chickenNuggetSum = chickenNuggetCount * 42;
    double largeCokeSum = largeCokeCount * 224;
    double softServeSum = softServeCount * 200;

    double bigMacSum = bigMacCount * 550;
    double cheeseBurgerSum = cheeseBurgerCount * 313;
    double chickenBurgerSum = chickenBurgerCount * 357;
    double quarterPounderSum = quarterPounderCount * 417;


     _calorieSum = largeFriesSum+chickenNuggetSum+largeCokeSum+softServeSum+bigMacSum+cheeseBurgerSum+chickenBurgerSum+quarterPounderSum;
    return _calorieSum.toStringAsFixed(0);
  }

  String displayMessage() {
    if (_calorieSum > 2000) {
      return 'Thats A LOT of calories and very unhealthy for you!';
    } else {
      return 'Excessive junk food can lead to heart attack, diabetes and high blood pressure.';
    }
  }
}
