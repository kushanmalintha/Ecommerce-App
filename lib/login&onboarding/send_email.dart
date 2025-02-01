import 'package:ecommerce_app/widgets/box_custom_button.dart';
import 'package:flutter/material.dart';

class SendEmailScreen extends StatefulWidget {
  const SendEmailScreen({super.key});

  @override
  State<SendEmailScreen> createState() => _SendEmailScreenState();
}

class _SendEmailScreenState extends State<SendEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 250),
            Container(
              height: 100,
              width: 100,
              alignment: Alignment.center,
              child: Image.asset(
                'assets/send-data.png',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Expanded(
                  child: Text(
                    'We Sent you an email to reset your password.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 150,
              child: BoxCustomButton(
                text: "Return to Login",
                backgroundColor: const Color.fromRGBO(142, 108, 239, 100),
                textColor: Colors.white,
                onPressed: () {
                  // Handle the button press action here
                },
                borderRadius: 25.0,
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
