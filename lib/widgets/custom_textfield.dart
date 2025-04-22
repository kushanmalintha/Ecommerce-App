import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final Color baseColor;
  final Color fieldColor;
  final TextInputType inputType;
  final int radius;

  const CustomTextField({
    super.key,
    required this.hint,
    required this.baseColor,
    required this.fieldColor,
    this.inputType = TextInputType.text,
    this.radius = 0,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: widget.fieldColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(widget.radius.toDouble()),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: TextField(
          keyboardType: widget.inputType,
          decoration: InputDecoration(
            hintStyle: TextStyle(
              color: widget.baseColor,
              fontWeight: FontWeight.bold,
            ),
            border: InputBorder.none,
            hintText: widget.hint,
          ),
        ),
      ),
    );
  }
}
