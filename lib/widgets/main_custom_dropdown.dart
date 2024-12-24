import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final List<String> items;
  final String? value;
  final Color backgroundColor;
  final Color textColor;
  final Function(String?) onChanged;
  final double borderRadius;
  final double width;
  final String hintText;

  const CustomDropdown({
    super.key,
    required this.items,
    required this.value,
    required this.backgroundColor,
    required this.textColor,
    required this.onChanged,
    required this.hintText,
    required this.borderRadius,
    this.width = double.infinity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String?>(
          value: value,
          icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
          dropdownColor: backgroundColor,
          isExpanded: true,
          hint: Text(
            hintText,
            style: TextStyle(color: textColor.withOpacity(0.6)),
          ),
          onChanged: (String? newValue) {
            onChanged(newValue);
          },
          items: items.map((String item) {
            return DropdownMenuItem<String?>(
              value: item,
              child: Text(
                item,
                style: TextStyle(color: textColor, fontSize: 16.0),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
