import 'package:ecommerce_app/orders_page/processing.dart';
import 'package:flutter/material.dart';

class WithOrderScreen extends StatefulWidget {
  const WithOrderScreen({super.key});

  @override
  State<WithOrderScreen> createState() => _WithOrderScreenState();
}

class _WithOrderScreenState extends State<WithOrderScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<String> buttonList = [
    'Processing',
    'Shipped',
    'Delivered',
    'Returned',
    'Canceled'
  ];

  final List<Widget> screens = const [
    ProcessingScreen(),
    ProcessingScreen(),
    ProcessingScreen(),
    ProcessingScreen(),
    ProcessingScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: buttonList.length, vsync: this);

    // Listen to animation (for swipe detection)
    _tabController.animation?.addListener(() {
      final value = _tabController.animation!.value;
      final newIndex = value.round();

      if (_tabController.index != newIndex) {
        setState(() {}); // Rebuild to update the button color
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Custom tab bar
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  buttonList.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: GestureDetector(
                      onTap: () {
                        _tabController.animateTo(index);
                        setState(() {});
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: _tabController.index == index
                              ? const Color.fromRGBO(142, 108, 239, 1)
                              : Colors.grey[200],
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Text(
                          buttonList[index],
                          style: TextStyle(
                            fontSize: 12,
                            color: _tabController.index == index
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Swipable views
            Expanded(
              child: TabBarView(
                controller: _tabController,
                physics: const BouncingScrollPhysics(),
                children: screens,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
