import 'package:flutter/material.dart';

class CustomClothBox extends StatefulWidget {
  final String imagePath;
  final String productName;
  final String price;
  final VoidCallback onButtonPressed;
  final bool showIconButton;

  const CustomClothBox({
    super.key,
    required this.imagePath,
    this.productName = '',
    this.price = '',
    required this.onButtonPressed,
    this.showIconButton = true,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomClothBoxState createState() => _CustomClothBoxState();
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
        width: 175,
        height: 320,
        padding: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: Colors.grey[200]!,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: toggleFavorite,
                      icon: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 300),
                        transitionBuilder: (child, animation) {
                          return ScaleTransition(
                              scale: animation, child: child);
                        },
                        child: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          key: ValueKey<bool>(isFavorite),
                          color: isFavorite
                              ? const Color.fromRGBO(142, 108, 239, 100)
                              : const Color.fromRGBO(142, 108, 239, 100),
                          size: 28,
                        ),
                      ),
                    ),
                  ],
                ),
                Image.asset(widget.imagePath,
                    height: 200, width: 150, fit: BoxFit.cover),
                const SizedBox(height: 10),
                Text(
                  widget.productName,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.price,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
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
