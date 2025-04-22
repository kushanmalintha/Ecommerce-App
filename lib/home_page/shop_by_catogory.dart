import 'package:ecommerce_app/colors.dart';
import 'package:ecommerce_app/home_page/search_result.dart';
import 'package:ecommerce_app/widgets/category_card.dart';
import 'package:ecommerce_app/widgets/round_custom_button.dart';
import 'package:flutter/material.dart';

class ShopByCategoryScreen extends StatefulWidget {
  const ShopByCategoryScreen({super.key});

  @override
  State<ShopByCategoryScreen> createState() => _ShopByCategoryScreenState();
}

class _ShopByCategoryScreenState extends State<ShopByCategoryScreen> {
  final List<String> titles = [
    'Shirts',
    'Hoodies',
    'Trousers',
    'Shorts',
    'Shoes',
    'Bags'
  ];
  final List<String> imagePaths = [
    'assets/shirt.png',
    'assets/hoodie.png',
    'assets/trouser.png',
    'assets/short.png',
    'assets/shoe.png',
    'assets/bag.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenBackground,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.topLeft,
              child: RoundCustomButton(
                radius: 25,
                icon: Icon(
                  Icons.arrow_back,
                  color: AppColors.text1,
                  size: 20,
                ),
                color: AppColors.customTextFeildFeild,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Search by Category',
                  style: TextStyle(
                    color: AppColors.text1,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              children: List.generate(titles.length, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: CategoryCard(
                    imagePath: imagePaths[index],
                    title: titles[index],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SearchResultScreen(),
                        ),
                      );
                    },
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
