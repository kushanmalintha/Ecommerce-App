import 'package:ecommerce_app/widgets/box_custom_button.dart';
import 'package:ecommerce_app/widgets/cart_card.dart';
import 'package:ecommerce_app/widgets/round_custom_button.dart';
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
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RoundCustomButton(
                        radius: 25,
                        color: Colors.grey[200]!,
                        onPressed: () {},
                      ),
                      const Text(
                        'Cart',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 100,
                        child: BoxCustomButton(
                          text: 'Remove All',
                          backgroundColor: Colors.grey[200]!,
                          textColor: Colors.black,
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
            color: Colors.white,
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Subtotal',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    Text(
                      '\$200.00',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shipping Fee',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    Text(
                      '\$80.00',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    Text(
                      '\$380.00',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                BoxCustomButton(
                  text: 'Checkout',
                  backgroundColor: const Color.fromRGBO(142, 108, 239, 100),
                  textColor: Colors.white,
                  onPressed: () {},
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
