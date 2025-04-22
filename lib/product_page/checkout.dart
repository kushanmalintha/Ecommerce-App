import 'package:ecommerce_app/product_page/all_address.dart';
import 'package:ecommerce_app/product_page/all_payments.dart';
import 'package:ecommerce_app/product_page/order_place.dart';
import 'package:ecommerce_app/widgets/box_custom_button.dart';
import 'package:ecommerce_app/widgets/custom_box_with_navi.dart';
import 'package:ecommerce_app/widgets/round_custom_button.dart';
import 'package:ecommerce_app/colors.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
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
                        'Checkout',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w900,
                          color: AppColors.titleText,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AllAddressScreen(),
                        ),
                      );
                    },
                    child: const CustomBoxWithNavi(
                      title: 'Shipping Address',
                      description: 'Add Shipping Address',
                    ),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AllPaymentScreen(),
                        ),
                      );
                    },
                    child: const CustomBoxWithNavi(
                      title: 'Payment Method',
                      description: 'Add Payment Method',
                    ),
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
                  text: 'Place Order',
                  backgroundColor: AppColors.primary,
                  textColor: AppColors.boxCustomButtonText,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OrderPlaceScreen(),
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
