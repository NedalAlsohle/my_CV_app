import 'package:get/get.dart';

class PersonalInfoController extends GetxController {
  var expanded = Rxn<int>(); // يمكن أن تتقبل null

  void toggleContainer(int index) {
    if (expanded.value == index) {
      return;
    }
    expanded.value = index;
  }
}
