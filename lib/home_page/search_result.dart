import 'package:ecommerce_app/colors.dart';
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
      backgroundColor: AppColors.screenBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RoundCustomButton(
                    radius: 20,
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
                  const SizedBox(width: 10),
                  Expanded(
                    child: CustomSearchField(
                      textColor: AppColors.text1,
                      backgroundColor: AppColors.customSearchFieldBackground,
                      hintText: 'Search for products...',
                      hintTextColor: AppColors.text3,
                      borderRadius: 30.0,
                      onChanged: (value) {},
                      onSearchPressed: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '53 Results found',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.text1,
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: (titles.length / 2).ceil(),
                itemBuilder: (context, index) {
                  int firstIndex = index * 2;
                  int secondIndex = firstIndex + 1;

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomClothBox(
                            imagePath: imagePaths[firstIndex],
                            productName: titles[firstIndex],
                            price: '\$148.00',
                            onButtonPressed: () {},
                          ),
                        ),
                        if (secondIndex < titles.length)
                          Expanded(
                            child: CustomClothBox(
                              imagePath: imagePaths[secondIndex],
                              productName: titles[secondIndex],
                              price: '\$148.00',
                              onButtonPressed: () {},
                            ),
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
