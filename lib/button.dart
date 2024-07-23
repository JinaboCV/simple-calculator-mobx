import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonDigit extends StatelessWidget {
  final Function()? onTap;
  final String? label;
  Color? bgColor;
  Color? textColor = Colors.white;

  ButtonDigit.red({this.onTap, this.label}) {
    bgColor = Colors.red;
  }

  ButtonDigit.orange({this.onTap, this.label}) {
    bgColor = Colors.deepOrange;
  }

  ButtonDigit.blue({this.onTap, this.label}) {
    bgColor = Colors.blue;
  }

  ButtonDigit.grey({this.onTap, this.label}) {
    bgColor = Colors.grey;
    textColor = Colors.black87;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Container(
            color: bgColor,
            child: Center(
              child: Text(
                label!,
                style: TextStyle(color: textColor, fontSize: 25),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
