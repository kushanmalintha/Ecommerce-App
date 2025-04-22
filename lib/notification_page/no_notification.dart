import 'package:ecommerce_app/home_page/shop_by_catogory.dart';
import 'package:ecommerce_app/widgets/box_custom_button.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/colors.dart';

class NoNotificationScreen extends StatefulWidget {
  const NoNotificationScreen({super.key});

  @override
  State<NoNotificationScreen> createState() => _NoNotificationScreenState();
}

class _NoNotificationScreenState extends State<NoNotificationScreen> {
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
                  'assets/bell.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'No Notification yet.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.titleText,
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
