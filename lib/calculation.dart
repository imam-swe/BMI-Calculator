class Calculation {
  int height;
  int weight;
  double result = 0;

  Calculation({required this.height, required this.weight});

  String bmiresult() {
    result = (weight / ((height / 100) * (height / 100)));
    return result.toString();
  }

  String feedback() {
    if (result > 30) {
      return "Obese";
    } else if (result > 25) {
      return "Over Weight";
    } else if (result > 18) {
      return "Normal";
    } else {
      return "Under Weight";
    }
  }

  String suggestion() {
    if (result > 30) {
      return "Workout More";
    } else if (result > 25) {
      return "Eat Less";
    } else if (result > 18) {
      return "You are fit";
    } else {
      return "Eat More";
    }
  }
}
