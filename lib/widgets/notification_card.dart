// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:ecommerce_app/colors.dart';

class NotificationCard extends StatelessWidget {
  final String notification;
  final bool isRead;
  final VoidCallback? onTap;
  final Color cardColor;

  const NotificationCard({
    super.key,
    required this.notification,
    this.isRead = false,
    this.onTap,
    required this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          color: cardColor,
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
            Icon(
              isRead ? Icons.notifications : Icons.notifications_active,
              size: 20,
              color: AppColors.primary,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                notification,
                style: const TextStyle(
                  fontSize: 16,
                  color: AppColors.text1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
