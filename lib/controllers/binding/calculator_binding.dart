import 'package:get/get.dart';
import 'package:getx_simple_bmi_calculator/controllers/controllers.dart';


class CalculatorBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CalculateMetricController());
    Get.lazyPut(() => CalculateUSController());
  }
}
