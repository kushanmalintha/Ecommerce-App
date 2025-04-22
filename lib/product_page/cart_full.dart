import 'package:ecommerce_app/product_page/checkout.dart';
import 'package:ecommerce_app/widgets/box_custom_button.dart';
import 'package:ecommerce_app/widgets/cart_card.dart';
import 'package:ecommerce_app/widgets/round_custom_button.dart';
import 'package:ecommerce_app/colors.dart';
import 'package:flutter/material.dart';

class CartFullScreen extends StatefulWidget {
  const CartFullScreen({super.key});

  @override
  State<CartFullScreen> createState() => _CartFullScreenState();
}

class _CartFullScreenState extends State<CartFullScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenBackground,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RoundCustomButton(
                        radius: 25,
                        color: AppColors.roundCustomButtonBackground,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      const Text(
                        'Cart',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w900,
                          color: AppColors.titleText,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 100,
                        child: BoxCustomButton(
                          text: 'Remove All',
                          backgroundColor: AppColors.boxCustomButtonBackground,
                          textColor: AppColors.text1,
                          onPressed: () {},
                          borderRadius: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const CartCard(
                    imagePath: 'assets/shirt.png',
                    productName: 'Shirt',
                    price: 100,
                    size: 'M',
                    color: 'Blue',
                  ),
                  const SizedBox(height: 10),
                  const CartCard(
                    imagePath: 'assets/hoodie.png',
                    productName: 'Hoodie',
                    price: 150,
                    size: 'L',
                    color: 'Black',
                  ),
                  const SizedBox(height: 10),
                  const CartCard(
                    imagePath: 'assets/trouser.png',
                    productName: 'Trouser',
                    price: 80,
                    size: 'S',
                    color: 'Grey',
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            color: AppColors.screenBackground,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Subtotal',
                      style: TextStyle(fontSize: 16, color: AppColors.text3),
                    ),
                    const Text(
                      '\$200.00',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.text1,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shipping Fee',
                      style: TextStyle(fontSize: 16, color: AppColors.text3),
                    ),
                    const Text(
                      '\$80.00',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.text1,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(fontSize: 16, color: AppColors.text3),
                    ),
                    const Text(
                      '\$380.00',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.text1,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                BoxCustomButton(
                  text: 'Checkout',
                  backgroundColor: AppColors.primary,
                  textColor: AppColors.boxCustomButtonText,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CheckoutScreen(),
                      ),
                    );
                  },
                  borderRadius: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
