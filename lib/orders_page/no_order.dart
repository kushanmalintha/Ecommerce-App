import 'package:ecommerce_app/widgets/box_custom_button.dart';
import 'package:ecommerce_app/widgets/round_custom_button.dart';
import 'package:flutter/material.dart';

class NoOrderScreen extends StatefulWidget {
  const NoOrderScreen({super.key});

  @override
  State<NoOrderScreen> createState() => _NoOrderScreenState();
}

class _NoOrderScreenState extends State<NoOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RoundCustomButton(
                  radius: 25,
                  color: Colors.grey[200]!,
                  onPressed: () {},
                ),
                const Text(
                  'Order',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 200),
            Container(
              height: 100,
              width: 100,
              alignment: Alignment.center,
              child: Image.asset(
                'assets/cart.png',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Expanded(
                  child: Text(
                    'No Oreders yet.',
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
                text: "Explore Categories",
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
