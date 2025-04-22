import 'package:ecommerce_app/colors.dart';
import 'package:ecommerce_app/login&onboarding/create_acccount.dart';
import 'package:ecommerce_app/login&onboarding/sign_in_pwd.dart';
import 'package:ecommerce_app/widgets/box_custom_button.dart';
import 'package:ecommerce_app/widgets/custom_textfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInEmailScreen extends StatefulWidget {
  const SignInEmailScreen({super.key});

  @override
  State<SignInEmailScreen> createState() => _SignInEmailScreenState();
}

class _SignInEmailScreenState extends State<SignInEmailScreen> {
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
                  'Sign in',
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
              hint: "E-mail Address",
              inputType: TextInputType.emailAddress,
              radius: 10,
            ),
            const SizedBox(height: 10),
            BoxCustomButton(
              text: "Continue",
              backgroundColor: AppColors.primary,
              textColor: AppColors.boxCustomButtonText,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignInPwdScreen()));
              },
              borderRadius: 25.0,
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                RichText(
                  text: TextSpan(
                    text: "Don't have an account? ",
                    style: const TextStyle(
                      color: AppColors.text1,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                    children: [
                      TextSpan(
                        text: "Create one",
                        style: const TextStyle(
                          color: AppColors.text2,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CreateAccountScreen()));
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            BoxCustomButton(
              text: "Continue With Apple",
              backgroundColor: AppColors.boxCustomButtonBackground,
              textColor: AppColors.text1,
              onPressed: () {
                // Handle the button press action here
              },
              borderRadius: 25.0,
              icon: Icons.apple,
            ),
            const SizedBox(height: 10),
            BoxCustomButton(
              text: "Continue With Google",
              backgroundColor: AppColors.boxCustomButtonBackground,
              textColor: AppColors.text1,
              onPressed: () {
                // Handle the button press action here
              },
              borderRadius: 25.0,
              icon: Icons.g_mobiledata,
            ),
            const SizedBox(height: 10),
            BoxCustomButton(
              text: "Continue With Facebook",
              backgroundColor: AppColors.boxCustomButtonBackground,
              textColor: AppColors.text1,
              onPressed: () {
                // Handle the button press action here
              },
              borderRadius: 25.0,
              icon: Icons.facebook,
            ),
          ],
        ),
      ),
    );
  }
}
