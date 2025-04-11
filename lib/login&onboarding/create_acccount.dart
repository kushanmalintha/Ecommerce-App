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
      backgroundColor: Colors.white,
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
              hint: "First Name",
              inputType: TextInputType.emailAddress,
              radius: 10,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              baseColor: Colors.grey,
              fieldColor: Colors.grey[200]!,
              hint: "Last Name",
              inputType: TextInputType.emailAddress,
              radius: 10,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              baseColor: Colors.grey,
              fieldColor: Colors.grey[200]!,
              hint: "Email Address",
              inputType: TextInputType.emailAddress,
              radius: 10,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              baseColor: Colors.grey,
              fieldColor: Colors.grey[200]!,
              hint: "Password",
              inputType: TextInputType.emailAddress,
              radius: 10,
            ),
            const SizedBox(height: 50),
            BoxCustomButton(
              text: "Continue",
              backgroundColor: const Color.fromRGBO(142, 108, 239, 100),
              textColor: Colors.white,
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
