import 'dart:math';

import 'package:get/get.dart';

class CalculateUSController extends GetxController {
  RxDouble height = 40.0.obs;
  RxDouble weight = 80.0.obs;
  RxDouble forUS = 703.0.obs;

  RxDouble bmiResult = 0.0.obs;
  RxString textResult = ''.obs;
  RxString calculatedResult = ''.obs;

  void calculateBMIResultUS() {
    bmiResult.value = forUS * (weight.value / (pow(height.value, 2)));
    calculatedResult.value = "Your BMI is ${bmiResult.value.round()}";
    if (bmiResult.value >= 25) {
      textResult.value = "You\'re over weight";
    } else if (bmiResult.value >= 18.5 && bmiResult.value < 25) {
      textResult.value = "You have normal weight";
    } else {
      textResult.value = "You\'re under weight";
    }
  }
}
