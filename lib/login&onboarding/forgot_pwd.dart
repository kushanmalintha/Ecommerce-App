import 'package:ecommerce_app/colors.dart';
import 'package:ecommerce_app/login&onboarding/send_email.dart';
import 'package:ecommerce_app/widgets/box_custom_button.dart';
import 'package:ecommerce_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenBackground,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 60),
            const Row(
              children: [
                Text(
                  'Forgot Password',
                  style: TextStyle(
                    color: AppColors.titleText,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            CustomTextField(
              baseColor: AppColors.customTextFeildBase,
              fieldColor: AppColors.customTextFeildFeild,
              hint: "Enter Email Address",
              inputType: TextInputType.emailAddress,
              radius: 10,
            ),
            const SizedBox(height: 20),
            BoxCustomButton(
              text: "Continue",
              backgroundColor: AppColors.primary,
              textColor: AppColors.boxCustomButtonText,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SendEmailScreen(),
                  ),
                );
              },
              borderRadius: 25.0,
            ),
          ],
        ),
      ),
    );
  }
}
