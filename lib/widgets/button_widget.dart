import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color textColor;
  final Color buttonColor;
  final String text;
  final VoidCallback onPressed;
  const ButtonWidget(
      {super.key,
      required this.textColor,
      required this.buttonColor,
      required this.text,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        width: 316,
        height: 58,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: buttonColor,
        ),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              color: textColor, fontSize: 20, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
