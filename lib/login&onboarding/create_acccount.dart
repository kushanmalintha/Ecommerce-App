import 'package:ecommerce_app/widgets/main_custom_button.dart';
import 'package:ecommerce_app/widgets/main_custom_textfield.dart';
import 'package:ecommerce_app/widgets/round_custom_button.dart';
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
                  'Create Account',
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
              hint: "First Name",
              inputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 10),
            CustomMainTextField(
              baseColor: Colors.grey[800]!,
              fieldColor: Colors.grey[200]!,
              hint: "Last Name",
              inputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 10),
            CustomMainTextField(
              baseColor: Colors.grey[800]!,
              fieldColor: Colors.grey[200]!,
              hint: "Email Address",
              inputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 10),
            CustomMainTextField(
              baseColor: Colors.grey[800]!,
              fieldColor: Colors.grey[200]!,
              hint: "Password",
              inputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 50),
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
