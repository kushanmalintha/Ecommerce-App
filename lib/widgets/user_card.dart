// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:ecommerce_app/colors.dart';

class UserCard extends StatelessWidget {
  final String imagePath;
  final String userName;
  final double rating;
  final String ratingDescription;
  final String daysAgo;

  const UserCard({
    super.key,
    required this.imagePath,
    required this.userName,
    required this.rating,
    required this.ratingDescription,
    required this.daysAgo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppColors.screenBackground,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: AppColors.customTextFeildBase,
          width: 2.0,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.text1.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipOval(
                child: Image.asset(
                  imagePath,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  userName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.text1,
                  ),
                ),
              ),
              Text(
                '$rating ★',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            ratingDescription,
            style: const TextStyle(
              fontSize: 14,
              color: AppColors.text5,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '$daysAgo days ago',
            style: const TextStyle(
              fontSize: 12,
              color: AppColors.text1,
            ),
          ),
        ],
      ),
    );
  }
}
