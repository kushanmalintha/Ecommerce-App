import 'package:ecommerce_app/home_page/shop_by_catogory.dart';
import 'package:ecommerce_app/widgets/box_custom_button.dart';
import 'package:ecommerce_app/colors.dart';
import 'package:flutter/material.dart';

class CartEmptyScreen extends StatefulWidget {
  const CartEmptyScreen({super.key});

  @override
  State<CartEmptyScreen> createState() => _CartEmptyScreenState();
}

class _CartEmptyScreenState extends State<CartEmptyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenBackground,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/basket.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Your Cart is Empty',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.titleText,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 150,
                child: BoxCustomButton(
                  text: "Explore Categories",
                  backgroundColor: AppColors.primary,
                  textColor: AppColors.boxCustomButtonText,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ShopByCategoryScreen(),
                      ),
                    );
                  },
                  borderRadius: 25.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
