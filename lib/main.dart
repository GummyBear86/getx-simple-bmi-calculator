import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_simple_bmi_calculator/controllers/binding/calculator_binding.dart';
import 'package:getx_simple_bmi_calculator/views/bmi_calculator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialBinding: CalculatorBinding(),
      home: BMICalculator(),
    );
  }
}
