import 'package:flutter/material.dart';

class CustomMainTextField extends StatefulWidget {
  final String hint;
  final Color baseColor;
  final Color fieldColor;
  final TextInputType inputType;

  const CustomMainTextField({
    super.key,
    required this.hint,
    required this.baseColor,
    required this.fieldColor,
    this.inputType = TextInputType.text,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomMainTextField> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: widget.fieldColor,
      shape: const Border(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: TextField(
          keyboardType: widget.inputType,
          decoration: InputDecoration(
            hintStyle: TextStyle(
              color: widget.baseColor,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w300,
            ),
            border: InputBorder.none,
            hintText: widget.hint,
          ),
        ),
      ),
    );
  }
}
