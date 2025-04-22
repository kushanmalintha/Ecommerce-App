import 'package:ecommerce_app/colors.dart';
import 'package:flutter/material.dart';

class CustomSearchField extends StatefulWidget {
  final Color textColor;
  final Color backgroundColor;
  final String hintText;
  final Color hintTextColor;
  final double borderRadius;
  final ValueChanged<String>? onChanged;
  final VoidCallback onSearchPressed;

  const CustomSearchField({
    super.key,
    required this.onSearchPressed,
    this.textColor = AppColors.text1,
    this.backgroundColor = AppColors.text4,
    this.hintText = 'Search...',
    this.hintTextColor = AppColors.text5,
    this.borderRadius = 25.0,
    this.onChanged,
  });

  @override
  State<CustomSearchField> createState() => _CustomSearchFieldState();
}

class _CustomSearchFieldState extends State<CustomSearchField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.addListener(() {
      setState(() {});
    });
  }

  void _clearSearch() {
    _controller.clear();
    widget.onChanged?.call('');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.circular(widget.borderRadius),
      ),
      child: TextField(
        controller: _controller,
        onChanged: widget.onChanged,
        style: TextStyle(color: widget.textColor),
        decoration: InputDecoration(
          prefixIcon: IconButton(
            onPressed: widget.onSearchPressed,
            icon: const Icon(Icons.search, color: AppColors.text5),
          ),
          suffixIcon: _controller.text.isNotEmpty
              ? IconButton(
                  icon: const Icon(Icons.close, color: AppColors.text5),
                  onPressed: _clearSearch,
                )
              : null,
          hintText: widget.hintText,
          hintStyle: TextStyle(color: widget.hintTextColor),
          filled: true,
          fillColor: widget.backgroundColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
