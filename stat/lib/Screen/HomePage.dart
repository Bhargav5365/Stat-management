import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stat/controller/MyController.dart';

class HomePage extends StatelessWidget {
  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stat Management"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
                  "Name is ${myController.student.value.name}",
                  style: TextStyle(fontSize: 16),
                )),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                myController.convertUpperCase();
              },
              child: Text("Upper"),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                myController.convertLowerCase();
              },
              child: Text("Lower"),
            ),
          ],
        ),
      ),
    );
  }
}
