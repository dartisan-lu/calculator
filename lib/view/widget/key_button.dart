import 'package:flutter/material.dart';

class KeyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const KeyButton(this.text, this.onPressed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 75,
        height: 75,
        padding: const EdgeInsetsDirectional.all(5),
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(text, style: const TextStyle(fontSize: 30),),
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
          ),
        ));
  }
}
