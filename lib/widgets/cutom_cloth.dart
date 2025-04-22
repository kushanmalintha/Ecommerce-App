// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:ecommerce_app/colors.dart';

class CustomClothBox extends StatefulWidget {
  final String imagePath;
  final String? productName;
  final String? price;
  final VoidCallback onButtonPressed;
  final bool showIconButton;

  const CustomClothBox({
    super.key,
    required this.imagePath,
    this.productName,
    this.price,
    required this.onButtonPressed,
    this.showIconButton = true,
  });

  @override
  State<CustomClothBox> createState() => _CustomClothBoxState();
}

class _CustomClothBoxState extends State<CustomClothBox> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onButtonPressed,
      child: Container(
        width: 170,
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.cartcard,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(20)),
                  child: Image.asset(
                    widget.imagePath,
                    height: 190,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                if (widget.showIconButton)
                  Positioned(
                    top: 8,
                    right: 8,
                    child: InkWell(
                      onTap: toggleFavorite,
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 300),
                        transitionBuilder: (child, animation) =>
                            ScaleTransition(scale: animation, child: child),
                        child: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          key: ValueKey<bool>(isFavorite),
                          color: AppColors.primary,
                          size: 26,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  if (widget.productName != null)
                    Text(
                      widget.productName!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.text1,
                      ),
                    ),
                  if (widget.price != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Text(
                        widget.price!,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
