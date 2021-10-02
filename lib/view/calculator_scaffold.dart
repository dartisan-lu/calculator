import 'package:calculator_app/domain/command.dart';
import 'package:calculator_app/service/calculator_service.dart';
import 'package:calculator_app/view/widget/display.dart';
import 'package:calculator_app/view/widget/keyboard.dart';
import 'package:flutter/material.dart';

class CalculatorScaffold extends StatefulWidget {
  const CalculatorScaffold({Key? key}) : super(key: key);

  @override
  _CalculatorScaffold createState() => _CalculatorScaffold();
}

class _CalculatorScaffold extends State<CalculatorScaffold> {
  CalculatorService calculator = CalculatorService();

  void action(Command x) {
    setState(() {
      calculator.doCommand(x);
    });
  }

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size); Screen Size...
    return Scaffold(
        appBar: AppBar(title: const Text('Calculator App')),
        body: Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.topCenter,
          child: Card(
              child: Container(
                  width: 350,
                  height: 500,
                  decoration: const BoxDecoration(color: Colors.black),
                  child: Column(
                    children: [
                      Display(calculator.getValue()),
                      Keyboard((x) => action(x)),
                    ],
                  ))),
        ));
  }
}
