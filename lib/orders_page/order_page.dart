import 'package:ecommerce_app/orders_page/processing.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/colors.dart';

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
    _tabController.animation?.addListener(() {
      final value = _tabController.animation!.value;
      final newIndex = value.round();

      if (_tabController.index != newIndex) {
        setState(() {});
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
      backgroundColor: AppColors.screenBackground,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
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
                              ? AppColors.primary
                              : AppColors.boxCustomButtonBackground,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Text(
                          buttonList[index],
                          style: TextStyle(
                            fontSize: 12,
                            color: _tabController.index == index
                                ? AppColors.text4
                                : AppColors.text1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
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
