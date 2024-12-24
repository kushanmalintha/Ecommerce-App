import 'package:ecommerce_app/widgets/main_custom_button.dart';
import 'package:ecommerce_app/widgets/main_custom_textfield.dart';
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
      backgroundColor: Colors.white,
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
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            CustomMainTextField(
              baseColor: Colors.grey[800]!,
              fieldColor: Colors.grey[200]!,
              hint: "E-mail Address",
              inputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 10),
            CustomMainButton(
              text: "Sign In",
              backgroundColor: const Color.fromRGBO(142, 108, 239, 100),
              textColor: Colors.white,
              onPressed: () {
                // Handle the button press action here
              },
              borderRadius: 25.0,
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                Text(
                  "Don't have an account? Create one",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60),
            CustomMainButton(
              text: "Continue With Apple",
              backgroundColor: Colors.grey[200]!,
              textColor: Colors.black,
              onPressed: () {
                // Handle the button press action here
              },
              borderRadius: 25.0,
            ),
            const SizedBox(height: 10),
            CustomMainButton(
              text: "Continue With Google",
              backgroundColor: Colors.grey[200]!,
              textColor: Colors.black,
              onPressed: () {
                // Handle the button press action here
              },
              borderRadius: 25.0,
            ),
            const SizedBox(height: 10),
            CustomMainButton(
              text: "Continue With Facebook",
              backgroundColor: Colors.grey[200]!,
              textColor: Colors.black,
              onPressed: () {
                // Handle the button press action here
              },
              borderRadius: 25.0,
            ),
          ],
        ),
      ),
    );
  }
}
