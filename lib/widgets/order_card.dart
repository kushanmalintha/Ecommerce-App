import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  final int orderNo;
  final String orderStates;
  final String date;
  final VoidCallback? onTap;
  final Color cardColor;
  final Icon? icon;
  final bool displayOrderNo;

  const OrderCard(
      {super.key,
      this.orderNo = 0,
      this.orderStates = '',
      this.date = '',
      this.onTap,
      this.cardColor = Colors.white,
      this.icon,
      this.displayOrderNo = true});

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
                  color: Color.fromRGBO(142, 108, 239, 1),
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
                    color: Colors.black,
                  ),
                ),
                Text(
                  displayOrderNo ? "" : date,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black,
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
