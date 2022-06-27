import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountController extends GetxController {
  static CountController get to => Get.find();
  var obxCount = 0.obs;
  int simpleCount = 0;

  void increment() {
    obxCount.value++;
    if (obxCount.value >= 1 && obxCount.value <= 1) {
      Get.snackbar(
        'Incremented',
        'Count incremented to ${obxCount.value.toString()}',
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 1),
      );
    } else if (obxCount.value % 2 == 0) {
      Get.snackbar('Even Count', 'Even number is ${obxCount.value.toString()}',
          snackPosition: SnackPosition.BOTTOM,
          duration: const Duration(seconds: 1));
    } else if (obxCount.value % 5 == 0) {
      Get.bottomSheet(Container(
        height: 150,
        color: Colors.blue,
        child: Center(
            child: Text(
          'Count has reached ${obxCount.value.toString()}',
          style: const TextStyle(fontSize: 28.0, color: Colors.white),
        )),
      ));
    }
  }

  void decrement() {
    obxCount.value--;
    if (obxCount.value <= 0) {
      obxCount.value = 0;
      Get.defaultDialog(
        radius: 10.0,
        contentPadding: const EdgeInsets.all(20.0),
        title: 'Brr No Negative',
        middleText: 'You cannot decrement counter into negative number',
        textConfirm: 'Okay',
        confirm: OutlinedButton.icon(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.check,
            color: Colors.blue,
          ),
          label: const Text(
            'Okay',
            style: TextStyle(color: Colors.blue),
          ),
        ),
      );
    }
  }
}
