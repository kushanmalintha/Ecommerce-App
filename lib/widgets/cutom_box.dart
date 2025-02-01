import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  final String description;
  final String imagePath;

  const CustomBox({super.key, this.description = '', this.imagePath = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey[200]!,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (description.isNotEmpty)
            Expanded(
              child: Text(
                description,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
          if (imagePath.isNotEmpty)
            Image.asset(imagePath, height: 200, width: 150, fit: BoxFit.cover),
        ],
      ),
    );
  }
}
