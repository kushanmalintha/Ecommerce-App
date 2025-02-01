import 'package:flutter/material.dart';

class RoundCustomButton extends StatelessWidget {
  final double radius;
  final Icon icon;
  final Color color;
  final VoidCallback onPressed;
  final ImageProvider? image;

  const RoundCustomButton({
    super.key,
    required this.radius,
    this.icon = const Icon(Icons.arrow_back),
    required this.color,
    required this.onPressed,
    this.image,
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
        padding: EdgeInsets.zero,
        child: ClipOval(
          child: SizedBox(
            width: radius * 2,
            height: radius * 2,
            child: image != null
                ? Image(
                    image: image!,
                    fit: BoxFit.cover,
                  )
                : icon,
          ),
        ),
      ),
    );
  }
}
