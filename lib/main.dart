import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'calculator.dart';
import 'controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Binding(),
      debugShowCheckedModeBanner: false,
      title: 'Calculator App',
      home: Calculator(),
    );
  }
}

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CalculatorController());
  }
}
