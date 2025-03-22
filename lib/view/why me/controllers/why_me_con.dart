import 'package:get/get.dart';

class StepController extends GetxController {
  var currentStep = 0.obs;

  void nextStep() {
    if (currentStep < 2) {
      currentStep++;
    }
  }

  void previousStep() {
    if (currentStep > 0) {
      currentStep--;
    }
  }
}
