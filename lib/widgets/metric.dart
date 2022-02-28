import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_simple_bmi_calculator/constants/constants.dart';

import 'package:getx_simple_bmi_calculator/controllers/controllers.dart';

class Metric extends GetView<CalculateMetricController> {
  const Metric({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 80,
          ),
          Column(
            children: [
              Obx(
                () => Column(
                  children: [
                    Text(
                      "Height (m)",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 24,
                          fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      child: Slider(
                        min: 50.0,
                        max: 300.0,
                        onChanged: (height) {
                          controller.height.value = height;
                        },
                        value: controller.height.value,
                        divisions: 100,
                        activeColor: primary,
                        label: "$controller.height.value",
                      ),
                    ),
                    Text(
                      "${controller.height.value} m",
                      style: TextStyle(
                          color: primary,
                          fontSize: 18,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Column(
                      children: [
                        Text(
                          "Weight (kg)",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 24,
                              fontWeight: FontWeight.w400),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16, right: 16),
                          child: Slider(
                            min: 30.0,
                            max: 350.0,
                            onChanged: (weight) {
                              controller.weight.value = weight;
                            },
                            value: controller.weight.value,
                            divisions: 100,
                            activeColor: primary,
                            label: "$controller.height.value",
                          ),
                        ),
                        Text(
                          "${controller.weight.value} kg",
                          style: TextStyle(
                              color: primary,
                              fontSize: 18,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              ),
              ElevatedButton(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Text(
                    'Calculate',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                ),
                onPressed: () => controller.calculateBMIResultMetric(),
              ),
              SizedBox(
                height: 50,
              ),
              Obx(
                () => Text(
                  "${controller.calculatedResult.value}",
                  style: TextStyle(fontSize: 20, color: primary),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Obx(
                () => Text(
                  "${controller.textResult.value}",
                  style: TextStyle(fontSize: 20, color: primary),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
