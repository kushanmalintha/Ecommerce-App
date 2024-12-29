import 'package:ecommerce_app/widgets/notification_card.dart';
import 'package:flutter/material.dart';

class WithNotificationScreen extends StatefulWidget {
  const WithNotificationScreen({super.key});

  @override
  State<WithNotificationScreen> createState() => _WithNotificationScreenState();
}

class _WithNotificationScreenState extends State<WithNotificationScreen> {
  final List<Map<String, dynamic>> notificationList = [
    {'text': 'Your order has been shipped', 'isRead': false},
    {'text': 'New promotion available!', 'isRead': false},
    {'text': 'Your refund is processed', 'isRead': false},
    {'text': 'Update your app to the latest version', 'isRead': false},
  ];

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
                    'Notifications',
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
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: notificationList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: NotificationCard(
                      notification: notificationList[index]['text'],
                      isRead: notificationList[index]['isRead'],
                      onTap: () {
                        setState(() {
                          notificationList[index]['isRead'] =
                              !notificationList[index]['isRead'];
                        });
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
