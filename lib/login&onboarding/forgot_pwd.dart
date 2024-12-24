import 'package:ecommerce_app/widgets/main_custom_button.dart';
import 'package:ecommerce_app/widgets/main_custom_textfield.dart';
import 'package:ecommerce_app/widgets/round_custom_button.dart';
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
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 60),
            Container(
              alignment: Alignment.topLeft,
              child: CustomRoundButton(
                radius: 25,
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 20,
                ),
                color: Colors.grey[300]!,
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                Text(
                  'Forgot Password',
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
              hint: "Enter Email Address",
              inputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            CustomMainButton(
              text: "Continue",
              backgroundColor: const Color.fromRGBO(142, 108, 239, 100),
              textColor: Colors.white,
              onPressed: () {
                // Handle the button press action here
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
