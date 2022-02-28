import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_simple_bmi_calculator/widgets/widgets.dart';

class BMICalculator extends GetView {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Practice BMI Calculator'),
          centerTitle: true,
          bottom: const TabBar(
            indicatorColor: Colors.cyan,
            tabs: [
              Tab(
                icon: Icon(Icons.precision_manufacturing),
                text: 'Metric',
              ),
              Tab(
                icon: Icon(Icons.public),
                text: 'US',
              ),
            ],
          ),
        ),
        body:  TabBarView(
          children: [
            Metric(),
            US(),
          ],
        ),
      ),
    );
  }
}
