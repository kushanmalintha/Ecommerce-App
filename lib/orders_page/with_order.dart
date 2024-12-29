import 'package:ecommerce_app/widgets/main_custom_button.dart';
import 'package:ecommerce_app/widgets/order_card.dart';
import 'package:flutter/material.dart';

class WithOrderScreen extends StatefulWidget {
  const WithOrderScreen({super.key});

  @override
  State<WithOrderScreen> createState() => _WithOrderScreenState();
}

class _WithOrderScreenState extends State<WithOrderScreen> {
  final List<dynamic> orderList = [
    [101, 3], // Order #101 with 3 items
    [102, 5], // Order #102 with 5 items
    [103, 2], // Order #103 with 2 items
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
            const Row(
              children: [
                Expanded(
                  child: Text(
                    'Orders',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),
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
                    child: CustomMainButton(
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
                    child: OrderCard(
                      orderNo: orderList[index][0],
                      itemCount: orderList[index][1],
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Order #${orderList[index][0]} selected',
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
