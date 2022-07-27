import 'package:flutter/material.dart';

import '../theme/color.dart';

class Button extends StatelessWidget {
  final String text;
  const Button({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        decoration: BoxDecoration(
            color: primary, borderRadius: BorderRadius.circular(15)),
        child: Text(text, style: TextStyle(color: Colors.white, fontSize: 15)));
  }
}

class Buttonexpand extends StatelessWidget {
  final String text;
  const Buttonexpand({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
            color: primary, borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text, style: TextStyle(color: Colors.white, fontSize: 15)),
          ],
        ));
  }
}
