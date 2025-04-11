import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  final String imagePath;
  final int textCount;
  final List<String>? texts;

  const CustomBox({
    super.key,
    this.imagePath = '',
    this.textCount = 1,
    this.texts,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (imagePath.isNotEmpty)
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imagePath,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(textCount, (index) {
                final text =
                    texts != null && texts!.length > index ? texts![index] : '';
                return Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: index == 0 ? 18 : 14,
                      fontWeight:
                          index == 0 ? FontWeight.bold : FontWeight.normal,
                      color: Colors.black87,
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
