
import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  Color? color;
  final String text;
  double? size;
   MainText({
    required this.text,
    this.size,
    this.color = const Color.fromARGB(255, 255, 255, 255),
    super.key
    });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Lato',
        color: color,
        fontSize: size?? 14,
        fontWeight: FontWeight.w400
      ),
    );
  }
}