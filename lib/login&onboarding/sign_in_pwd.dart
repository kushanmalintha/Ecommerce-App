import 'package:ecommerce_app/login&onboarding/about_yourself.dart';
import 'package:ecommerce_app/login&onboarding/forgot_pwd.dart';
import 'package:ecommerce_app/widgets/box_custom_button.dart';
import 'package:ecommerce_app/widgets/custom_textfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInPwdScreen extends StatefulWidget {
  const SignInPwdScreen({super.key});

  @override
  State<SignInPwdScreen> createState() => _SignInPwdScreenState();
}

class _SignInPwdScreenState extends State<SignInPwdScreen> {
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
              hint: "Password",
              inputType: TextInputType.emailAddress,
              radius: 10,
            ),
            const SizedBox(height: 10),
            BoxCustomButton(
              text: "Continue",
              backgroundColor: const Color.fromRGBO(142, 108, 239, 100),
              textColor: Colors.white,
              onPressed: () {
                // Handle continue button press
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutYourselfScreen(),
                  ),
                );
              },
              borderRadius: 25.0,
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                RichText(
                  text: TextSpan(
                    text: "Forgot Password? ",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                    children: [
                      TextSpan(
                        text: "Reset",
                        style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Handle the tap action here
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ForgotPasswordScreen(),
                              ),
                            );
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
