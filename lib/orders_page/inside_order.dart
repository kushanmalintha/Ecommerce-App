import 'package:ecommerce_app/widgets/cutom_box.dart';
import 'package:ecommerce_app/widgets/order_card.dart';
import 'package:ecommerce_app/widgets/round_custom_button.dart';
import 'package:flutter/material.dart';

class InsideOrderScreen extends StatefulWidget {
  const InsideOrderScreen({super.key});

  @override
  State<InsideOrderScreen> createState() => _InsideOrderScreenState();
}

class _InsideOrderScreenState extends State<InsideOrderScreen> {
  final List<Map<String, String>> orderStatesList = [
    {'orderStates': 'Delivered', 'date': 'January 13'},
    {'orderStates': 'Shipped', 'date': 'January 12'},
    {'orderStates': 'Processing', 'date': 'January 11'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RoundCustomButton(
                    radius: 25,
                    color: Colors.grey[200]!,
                    onPressed: () {},
                  ),
                  const Text(
                    'Order #101',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: orderStatesList.length,
                itemBuilder: (context, index) {
                  final order = orderStatesList[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: OrderCard(
                      orderStates: order['orderStates']!,
                      date: order['date']!,
                      displayOrderNo: false,
                      icon: const Icon(
                        Icons.check_circle,
                        color: Color.fromRGBO(142, 108, 239, 1),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 30),
              const Text(
                'Order Description',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const CustomBox(description: 'Blue color size 32 trouser'),
              const SizedBox(height: 30),
              const Text(
                'Shipping Details',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const CustomBox(
                description:
                    'No 10/A, Main road, Colombo                                123-456-789',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
