import 'dart:math';

import 'package:get/get.dart';

class CalculateMetricController extends GetxController {
  RxDouble height = 50.0.obs;
  RxDouble weight = 30.0.obs;

  RxDouble bmiResult = 0.0.obs;
  RxString textResult = ''.obs;
  RxString calculatedResult = ''.obs;

  void calculateBMIResultMetric() {
    bmiResult.value = weight.value / (pow(height.value / 100, 2));
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
