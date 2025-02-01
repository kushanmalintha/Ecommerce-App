import 'package:ecommerce_app/widgets/category_card.dart';
import 'package:ecommerce_app/widgets/box_custom_button.dart';
import 'package:ecommerce_app/widgets/round_custom_button.dart';
import 'package:flutter/material.dart';

class WithOrderScreen extends StatefulWidget {
  const WithOrderScreen({super.key});

  @override
  State<WithOrderScreen> createState() => _WithOrderScreenState();
}

class _WithOrderScreenState extends State<WithOrderScreen> {
  final List<dynamic> orderList = [
    '#101000', // Order #101
    '#102000', // Order #102
    '#103000', // Order #103
  ];

  final List<String> buttonList = [
    'Processing',
    'Shipped',
    'Delivered',
    'Returned',
    'Canceled'
  ];

  int selectedIndex = -1;

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
                  'Orders',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  buttonList.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: BoxCustomButton(
                      fontSize: 12,
                      text: buttonList[index],
                      backgroundColor: selectedIndex == index
                          ? const Color.fromRGBO(142, 108, 239, 1)
                          : Colors.grey[100]!,
                      textColor:
                          selectedIndex == index ? Colors.white : Colors.black,
                      onPressed: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      borderRadius: 25,
                      width: 80.0,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: orderList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: CategoryCard(
                      title: orderList[index],
                      imagePath: 'assets/shirt.png',
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Order #${orderList[index]} selected',
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
