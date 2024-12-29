import 'package:flutter/material.dart';

class CustomSearchField extends StatefulWidget {
  final Color textColor;
  final Color backgroundColor;
  final String hintText;
  final Color hintTextColor;
  final double borderRadius;
  final ValueChanged<String>? onChanged;

  const CustomSearchField({
    super.key,
    this.textColor = Colors.black,
    this.backgroundColor = Colors.white,
    this.hintText = 'Search...',
    this.hintTextColor = Colors.grey,
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
              onPressed: () {},
              icon: const Icon(Icons.search, color: Colors.grey)),
          suffixIcon: _controller.text.isNotEmpty
              ? IconButton(
                  icon: const Icon(Icons.close, color: Colors.grey),
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
