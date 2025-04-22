import 'package:ecommerce_app/home_page/shop_by_catogory.dart';
import 'package:ecommerce_app/widgets/box_custom_button.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/colors.dart';

class NoOrderScreen extends StatefulWidget {
  const NoOrderScreen({super.key});

  @override
  State<NoOrderScreen> createState() => _NoOrderScreenState();
}

class _NoOrderScreenState extends State<NoOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenBackground,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/cart.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'No Orders yet.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.text1,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                ),
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
                            builder: (context) =>
                                const ShopByCategoryScreen()));
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
