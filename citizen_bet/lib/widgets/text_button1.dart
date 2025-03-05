
import 'package:flutter/material.dart';


class TextButton1 extends StatelessWidget {
   TextButton1({

    this.borderRadius,
    this.textColor,
   required this.onPressed,
    this.buttonColor,
    required this.buttonText,
    this.borderColor,
    this.fontSize,
    super.key,
    });
    VoidCallback onPressed;
    Color? buttonColor;
    double? borderRadius;
    Color? textColor;
    String buttonText;
    Color? borderColor;
    double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Container(
  // padding: EdgeInsets.only(top: 15, bottom: 10),
     margin: const EdgeInsets.symmetric(horizontal: 10, ),
      decoration: BoxDecoration(
        color: buttonColor ?? Colors.white,
        borderRadius: BorderRadius.circular(borderRadius?? 0),
        border: Border.all(
          color: borderColor?? Colors.white
        )
      ),
      child: Material(
        color: Colors.transparent,
        child: TextButton(
          
          onPressed: onPressed,
           child: Text(
             buttonText,
             style: TextStyle(
               color: textColor?? Colors.black,
               fontSize: fontSize?? 14,
               fontWeight: FontWeight.w500
             ),
           )
           ),
      ),
    );
  }
}

