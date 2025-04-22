import 'package:ecommerce_app/colors.dart';
import 'package:ecommerce_app/login&onboarding/sign_in_email.dart';
import 'package:ecommerce_app/widgets/box_custom_button.dart';
import 'package:ecommerce_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
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
                  'Create Account',
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
              hint: "First Name",
              inputType: TextInputType.emailAddress,
              radius: 10,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              baseColor: AppColors.customTextFeildBase,
              fieldColor: AppColors.customTextFeildFeild,
              hint: "Last Name",
              inputType: TextInputType.emailAddress,
              radius: 10,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              baseColor: AppColors.customTextFeildBase,
              fieldColor: AppColors.customTextFeildFeild,
              hint: "Email Address",
              inputType: TextInputType.emailAddress,
              radius: 10,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              baseColor: AppColors.customTextFeildBase,
              fieldColor: AppColors.customTextFeildFeild,
              hint: "Password",
              inputType: TextInputType.emailAddress,
              radius: 10,
            ),
            const SizedBox(height: 50),
            BoxCustomButton(
              text: "Continue",
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
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
