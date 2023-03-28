import 'package:bmi_calculator/modules/home/home_screen.dart';
import 'package:bmi_calculator/modules/bmi_result/bmi_result_screen.dart';
import 'package:bmi_calculator/modules/bmi/bmi_screen.dart';
import 'package:bmi_calculator/modules/counter/counter_screen.dart';
import 'package:bmi_calculator/modules/home/home_screen.dart';
import 'package:bmi_calculator/modules/login/login_screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeScreen(),
    );
  }
}