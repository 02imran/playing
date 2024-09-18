import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:river_pod/config/app_logs.dart';

class PreformanceApp extends StatelessWidget {
  const PreformanceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/bouncing-ball.gif"),
            const CircularProgressIndicator(),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () async {
                  var total = await complexTask();
                  debugPrint("Task 1 $total");
                },
                child: const Text("Example 1")),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () async {
                  final receivePort = ReceivePort();
                  await Isolate.spawn(complexTask2, receivePort.sendPort);
                  receivePort.listen((total) {
                    AppLogs.successLog("Task 1 $total");
                    // debugPrint("Task 1 $total");
                  });
                },
                child: const Text("Example 1")),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () async {
                  final receivePort = ReceivePort();
                  await Isolate.spawn(complexTask3,
                      (iteration: 1000000000, sendPort: receivePort.sendPort));
                  receivePort.listen((total) {
                    AppLogs.successLog("Task 1 $total");
                    AppLogs.debugLog("Task 1 $total");
                    AppLogs.errorLog("Task 1 $total");
                    AppLogs.infoLog("Task 1 $total");
                  });
                },
                child: const Text("Example 1")),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Future<double> complexTask() async {
    double sum = 0.0;
    for (var i = 0; i < 1000000000; i++) {
      sum += i;
    }
    return sum;
  }
}

complexTask2(SendPort sendPort) {
  double sum = 0.0;
  for (var i = 0; i < 1000000000; i++) {
    sum += i;
  }
  sendPort.send(sum);
}

complexTask3(({int iteration, SendPort sendPort}) data) {
  double sum = 0.0;
  for (var i = 0; i < data.iteration; i++) {
    sum += i;
  }
  data.sendPort.send(sum);
}
