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
          if (imagePath.isNotEmpty)
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(textCount, (index) {
                return Text(
                  texts != null && texts!.length > index ? texts![index] : '',
                  style: const TextStyle(fontSize: 16),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
