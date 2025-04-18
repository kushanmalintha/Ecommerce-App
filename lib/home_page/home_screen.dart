import 'package:ecommerce_app/home_page/search_result.dart';
import 'package:ecommerce_app/home_page/shop_by_catogory.dart';
import 'package:ecommerce_app/product_page/cart_full.dart';
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
      backgroundColor: Colors.white,
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
                    color: Colors.grey,
                    onPressed: () {},
                    image: const AssetImage('assets/face.jpg'),
                  ),
                  SizedBox(
                    width: 100,
                    child: CustomDropdown(
                      items: const ['Men', 'Women'],
                      value: selectedGender,
                      backgroundColor: Colors.grey[200]!,
                      textColor: Colors.black,
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
                    color: const Color.fromRGBO(142, 108, 239, 100),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CartFullScreen()));
                    },
                    icon: const Icon(Icons.shopping_cart, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              CustomSearchField(
                textColor: Colors.black,
                backgroundColor: Colors.grey[200]!,
                hintText: 'Search for products...',
                hintTextColor: Colors.grey,
                borderRadius: 30.0,
                onChanged: (value) {},
                onSearchPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchResultScreen()));
                },
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: BoxCustomButton(
                      text: 'See all',
                      backgroundColor: Colors.white,
                      textColor: Colors.black54,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ShopByCategoryScreen()));
                      },
                      borderRadius: 25,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(6, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          RoundCustomButton(
                            radius: 35,
                            color: Colors.grey[200]!,
                            onPressed: () {},
                            image: AssetImage(imagePaths[index]),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            titles[index],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Top Selling',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: BoxCustomButton(
                      text: 'See all',
                      backgroundColor: Colors.white,
                      textColor: Colors.black54,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ShopByCategoryScreen()));
                      },
                      borderRadius: 25,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(6, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          CustomClothBox(
                            imagePath: imagePaths[index],
                            productName: titles[index],
                            price: "\$148.00",
                            onButtonPressed: () {},
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'New In',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: BoxCustomButton(
                      text: 'See all',
                      backgroundColor: Colors.white,
                      textColor: Colors.black54,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ShopByCategoryScreen()));
                      },
                      borderRadius: 25,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(6, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          CustomClothBox(
                            imagePath: imagePaths[index],
                            productName: titles[index],
                            price: "\$148.00",
                            onButtonPressed: () {},
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
