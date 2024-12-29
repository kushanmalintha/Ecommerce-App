import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final String notification;
  final bool isRead; // Track if the notification has been read
  final VoidCallback? onTap;
  final Color cardColor;

  const NotificationCard({
    super.key,
    required this.notification,
    this.isRead = false,
    this.onTap,
    this.cardColor = Colors.white,
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
            Icon(
              isRead ? Icons.notifications : Icons.notifications_active,
              size: 20,
              color: const Color.fromRGBO(142, 108, 239, 100),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                notification,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
