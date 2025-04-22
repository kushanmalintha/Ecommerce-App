import 'package:ecommerce_app/colors.dart';
import 'package:ecommerce_app/home_page/search_result.dart';
import 'package:ecommerce_app/home_page/shop_by_catogory.dart';
import 'package:ecommerce_app/product_page/cart_full.dart';
import 'package:ecommerce_app/product_page/product_page.dart';
import 'package:ecommerce_app/widgets/custom_search.dart';
import 'package:ecommerce_app/widgets/box_custom_button.dart';
import 'package:ecommerce_app/widgets/custom_dropdown.dart';
import 'package:ecommerce_app/widgets/cutom_cloth.dart';
import 'package:ecommerce_app/widgets/round_custom_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? selectedGender;
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RoundCustomButton(
                    radius: 25,
                    color: AppColors.roundCustomButtonBackground,
                    onPressed: () {},
                    image: const AssetImage('assets/face.jpg'),
                  ),
                  SizedBox(
                    width: 100,
                    child: CustomDropdown(
                      items: const ['Men', 'Women'],
                      value: selectedGender,
                      backgroundColor: AppColors.customDropDownBackground,
                      textColor: AppColors.text1,
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value;
                        });
                      },
                      borderRadius: 25.0,
                    ),
                  ),
                  RoundCustomButton(
                    radius: 25,
                    color: AppColors.primary,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CartFullScreen(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.shopping_cart, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              CustomSearchField(
                textColor: AppColors.text1,
                backgroundColor: AppColors.customSearchFieldBackground,
                hintText: 'Search for products...',
                hintTextColor: AppColors.text3,
                borderRadius: 30.0,
                onChanged: (value) {},
                onSearchPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearchResultScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 10),
              _sectionHeader('Categories', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ShopByCategoryScreen(),
                  ),
                );
              }),
              const SizedBox(height: 10),
              _horizontalCategoryList(),
              const SizedBox(height: 10),
              _sectionHeader('Top Selling', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ShopByCategoryScreen(),
                  ),
                );
              }),
              const SizedBox(height: 10),
              _horizontalClothList(),
              const SizedBox(height: 10),
              _sectionHeader('New In', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ShopByCategoryScreen(),
                  ),
                );
              }),
              const SizedBox(height: 10),
              _horizontalClothList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _sectionHeader(String title, VoidCallback onPressed) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
            color: AppColors.text1,
          ),
        ),
        SizedBox(
          width: 100,
          child: BoxCustomButton(
            text: 'See all',
            backgroundColor: AppColors.primary,
            textColor: AppColors.boxCustomButtonText,
            onPressed: onPressed,
            borderRadius: 25,
          ),
        ),
      ],
    );
  }

  Widget _horizontalCategoryList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(6, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                RoundCustomButton(
                  radius: 35,
                  color: AppColors.roundCustomButtonBackground,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchResultScreen(),
                      ),
                    );
                  },
                  image: AssetImage(imagePaths[index]),
                ),
                const SizedBox(height: 8),
                Text(
                  titles[index],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.text1,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }

  Widget _horizontalClothList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(6, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomClothBox(
              imagePath: imagePaths[index],
              productName: titles[index],
              price: "\$148.00",
              onButtonPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductScreen(),
                  ),
                );
              },
            ),
          );
        }),
      ),
    );
  }
}
