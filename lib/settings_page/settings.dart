import 'package:ecommerce_app/login&onboarding/sign_in_email.dart';
import 'package:ecommerce_app/settings_page/address.dart';
import 'package:ecommerce_app/settings_page/payment.dart';
import 'package:ecommerce_app/widgets/box_custom_button.dart';
import 'package:ecommerce_app/widgets/custom_box_with_navi.dart';
import 'package:ecommerce_app/widgets/cutom_box.dart';
import 'package:ecommerce_app/widgets/round_custom_button.dart';
import 'package:ecommerce_app/colors.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoundCustomButton(
                        radius: 50,
                        color: AppColors.roundCustomButtonBackground,
                        onPressed: () {},
                        image: const AssetImage('assets/face.jpg'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  const CustomBox(
                    textCount: 3,
                    texts: [
                      'Kushan Malintha',
                      'kushan@gmail.com',
                      '077 123 4567',
                    ],
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AddressScreen(),
                        ),
                      );
                    },
                    child: const CustomBoxWithNavi(description: 'Address'),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PaymentScreen(),
                        ),
                      );
                    },
                    child: const CustomBoxWithNavi(description: 'Payment'),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {},
                    child: const CustomBoxWithNavi(description: 'Wishlist'),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {},
                    child: const CustomBoxWithNavi(description: 'Help'),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {},
                    child: const CustomBoxWithNavi(description: 'Support'),
                  ),
                  const SizedBox(height: 50),
                  BoxCustomButton(
                    text: 'Sign Out',
                    backgroundColor: AppColors.primary,
                    textColor: AppColors.boxCustomButtonText,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInEmailScreen(),
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
