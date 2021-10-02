import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final String text;
  const Display(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsetsDirectional.all(20),
        alignment: Alignment.topRight,
        child: Text(text,
            style: const TextStyle(
              fontFamily: 'Technology',
              fontWeight: FontWeight.w700,
              color: Colors.green,
              fontSize: 72,
            )));
  }
}
