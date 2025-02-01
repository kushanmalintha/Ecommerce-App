import 'package:ecommerce_app/widgets/custom_search.dart';
import 'package:ecommerce_app/widgets/cutom_cloth.dart';
import 'package:ecommerce_app/widgets/round_custom_button.dart';
import 'package:flutter/material.dart';

class SearchResultScreen extends StatefulWidget {
  const SearchResultScreen({super.key});

  @override
  State<SearchResultScreen> createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends State<SearchResultScreen> {
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RoundCustomButton(
                    radius: 20,
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 20,
                    ),
                    color: Colors.grey[300]!,
                    onPressed: () {},
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: CustomSearchField(
                      textColor: Colors.black,
                      backgroundColor: Colors.grey[200]!,
                      hintText: 'Search for products...',
                      hintTextColor: Colors.grey,
                      borderRadius: 30.0,
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '53 Results found',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              // List of products in rows
              ListView.builder(
                shrinkWrap:
                    true, // Ensures that the ListView does not take up infinite space
                physics:
                    const NeverScrollableScrollPhysics(), // Prevents nested scrolling
                itemCount: (titles.length / 2).ceil(), // Number of rows
                itemBuilder: (context, index) {
                  // For each row,  display two items
                  int firstIndex = index * 2;
                  int secondIndex = firstIndex + 1;

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomClothBox(
                          imagePath: imagePaths[firstIndex],
                          productName: titles[firstIndex],
                          price: '\$148.00',
                          onButtonPressed: () {},
                        ),
                        if (secondIndex <
                            titles.length) // Check if there is a second item
                          CustomClothBox(
                            imagePath: imagePaths[secondIndex],
                            productName: titles[secondIndex],
                            price: '\$148.00',
                            onButtonPressed: () {},
                          ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
