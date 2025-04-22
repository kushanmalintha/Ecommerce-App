// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:ecommerce_app/colors.dart';

class OrderCard extends StatelessWidget {
  final int orderNo;
  final String orderStates;
  final String date;
  final VoidCallback? onTap;
  final Color cardColor;
  final Icon? icon;
  final bool displayOrderNo;

  const OrderCard({
    super.key,
    this.orderNo = 0,
    this.orderStates = '',
    this.date = '',
    this.onTap,
    this.icon,
    this.displayOrderNo = true,
    required this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
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
            icon ??
                const Icon(
                  Icons.shopping_cart,
                  size: 30,
                  color: AppColors.primary,
                ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  displayOrderNo ? "Order #$orderNo" : orderStates,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.text1,
                  ),
                ),
                Text(
                  displayOrderNo ? "" : date,
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppColors.text1,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
