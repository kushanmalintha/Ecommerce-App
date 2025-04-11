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
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            CustomTextField(
              baseColor: Colors.grey,
              fieldColor: Colors.grey[200]!,
              hint: "E-mail Address",
              inputType: TextInputType.emailAddress,
              radius: 10,
            ),
            const SizedBox(height: 10),
            BoxCustomButton(
              text: "Continue",
              backgroundColor: const Color.fromRGBO(142, 108, 239, 100),
              textColor: Colors.white,
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
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                    children: [
                      TextSpan(
                        text: "Create one",
                        style: const TextStyle(
                          color: Colors.blue,
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
              backgroundColor: Colors.grey[200]!,
              textColor: Colors.black,
              onPressed: () {
                // Handle the button press action here
              },
              borderRadius: 25.0,
              icon: Icons.apple,
            ),
            const SizedBox(height: 10),
            BoxCustomButton(
              text: "Continue With Google",
              backgroundColor: Colors.grey[200]!,
              textColor: Colors.black,
              onPressed: () {
                // Handle the button press action here
              },
              borderRadius: 25.0,
              icon: Icons.g_mobiledata,
            ),
            const SizedBox(height: 10),
            BoxCustomButton(
              text: "Continue With Facebook",
              backgroundColor: Colors.grey[200]!,
              textColor: Colors.black,
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
