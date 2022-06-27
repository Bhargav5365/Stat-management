import 'package:get/get.dart';
import 'package:stat/model/student.dart';

class MyController extends GetxController {
  var student = Student(name: "Hello", age: 20).obs;

  void convertUpperCase() {
    student.update((student) {
      student?.name = student?.name.toString().toUpperCase();
    });
  }

  void convertLowerCase() {
    student.update((student) {
      student?.name = student?.name.toString().toLowerCase();
    });
  }
}
