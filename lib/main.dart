import 'package:calculator_app/theme/app_theme.dart';
import 'package:calculator_app/view/calculator_scaffold.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      theme: defaultTheme,
      home: const CalculatorScaffold(),
    );
  }
}
