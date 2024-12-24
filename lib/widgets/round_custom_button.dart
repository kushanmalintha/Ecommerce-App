import 'package:flutter/material.dart';

class CustomRoundButton extends StatelessWidget {
  final double radius;
  final Icon icon;
  final Color color;
  final VoidCallback onPressed;

  const CustomRoundButton({
    super.key,
    required this.radius,
    required this.icon,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: radius * 2,
      height: radius * 2,
      child: MaterialButton(
        onPressed: onPressed,
        color: color,
        shape: const CircleBorder(),
        child: icon,
      ),
    );
  }
}
