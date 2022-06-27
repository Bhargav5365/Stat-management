import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello/Screen/user_page.dart';

import '../controllers/count_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  final CountController countController = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Obx(
              () => Text(
                '${countController.obxCount}',
                style: const TextStyle(fontSize: 48.0),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton.extended(
                  onPressed: () => countController.decrement(),
                  tooltip: 'simpleDecrement',
                  label: const Text('Decrement'),
                ),
                FloatingActionButton.extended(
                  onPressed: () {
                    countController.increment();
                  },
                  tooltip: 'simpleIncrement',
                  label: const Text('Increment'),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () => Get.to(UserPage()),
              child: const Text('User Home Page'),
            ),
          ],
        ),
      ),
    );
  }
}
