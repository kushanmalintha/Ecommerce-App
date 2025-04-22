// ignore_for_file: deprecated_member_use
import 'package:ecommerce_app/colors.dart';
import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  final int textCount;
  final List<String>? texts;

  const CustomBox({
    super.key,
    this.textCount = 1,
    this.texts,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.text4,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.text1.withOpacity(0.05),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
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
                fontWeight: index == 0 ? FontWeight.bold : FontWeight.normal,
                color: AppColors.text1,
              ),
            ),
          );
        }),
      ),
    );
  }
}
