// ignore_for_file: deprecated_member_use
import 'package:ecommerce_app/colors.dart';
import 'package:flutter/material.dart';

class CustomBoxWithNavi extends StatelessWidget {
  final String? title;
  final String description;
  final IconData icon;

  const CustomBoxWithNavi({
    super.key,
    this.title,
    required this.description,
    this.icon = Icons.arrow_forward_ios,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        color: AppColors.cartcard,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: AppColors.text1.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (title?.isNotEmpty ?? false)
                  Text(
                    title!,
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.text3,
                    ),
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        description,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Icon(
                      icon,
                      size: 20,
                      color: AppColors.text1,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
