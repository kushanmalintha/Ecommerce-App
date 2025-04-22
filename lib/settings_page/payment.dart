import 'package:ecommerce_app/settings_page/add_payment.dart';
import 'package:ecommerce_app/widgets/box_custom_button.dart';
import 'package:ecommerce_app/widgets/custom_box_with_navi.dart';
import 'package:ecommerce_app/widgets/round_custom_button.dart';
import 'package:ecommerce_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
                        'Cards',
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
                    onTap: () {},
                    child: const CustomBoxWithNavi(
                      description: '**** **** **** 1234',
                      icon: FontAwesomeIcons.ccVisa,
                    ),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {},
                    child: const CustomBoxWithNavi(
                      description: '**** **** **** 1234',
                      icon: FontAwesomeIcons.ccVisa,
                    ),
                  ),
                  const SizedBox(height: 50),
                  BoxCustomButton(
                    text: 'Add New Card',
                    backgroundColor: AppColors.primary,
                    textColor: AppColors.boxCustomButtonText,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AddPaymentScreen(),
                        ),
                      );
                    },
                    borderRadius: 25.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
