import 'package:calculator_app/domain/command.dart';
import 'package:flutter/material.dart';

import 'key_button.dart';

class Keyboard extends StatelessWidget {
  final void Function(Command) onPressed;

  const Keyboard(this.onPressed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsetsDirectional.all(20),
        child: Column(children: [
          Row(children: [
            KeyButton("1", () => onPressed(Command.one)),
            KeyButton("2", () => onPressed(Command.two)),
            KeyButton("3", () => onPressed(Command.three)),
            KeyButton("+", () => onPressed(Command.add))
          ]),
          Row(children: [
            KeyButton("4", () => onPressed(Command.four)),
            KeyButton("5", () => onPressed(Command.five)),
            KeyButton("6", () => onPressed(Command.six)),
            KeyButton("-", () => onPressed(Command.sub))
          ]),
          Row(children: [
            KeyButton("7", () => onPressed(Command.seven)),
            KeyButton("8", () => onPressed(Command.eight)),
            KeyButton("9", () => onPressed(Command.nine)),
            KeyButton("*", () => onPressed(Command.mul))
          ]),
          Row(children: [
            KeyButton("=", () => onPressed(Command.calc)),
            KeyButton("0", () => onPressed(Command.zero)),
            KeyButton("C", () => onPressed(Command.clear)),
            KeyButton("/", () => onPressed(Command.div))
          ]),
        ]));
  }
}
