import 'package:flutter/material.dart';

class BoxCustomButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final Function onPressed;
  final double borderRadius;
  final double width;
  final double fontSize;
  final IconData? icon;

  const BoxCustomButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    required this.onPressed,
    required this.borderRadius,
    this.fontSize = 16.0,
    this.width = double.infinity,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: MaterialButton(
        onPressed: () => onPressed(),
        color: backgroundColor,
        textColor: textColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        padding: const EdgeInsets.symmetric(vertical: 14.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Centered Text
            Text(
              text,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
              textAlign: TextAlign.center,
            ),
            // Left-aligned Icon
            if (icon != null)
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Icon(icon, color: textColor),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
