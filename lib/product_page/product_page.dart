import 'package:ecommerce_app/widgets/box_custom_button.dart';
import 'package:ecommerce_app/widgets/custom_dropdown.dart';
import 'package:ecommerce_app/widgets/cutom_cloth.dart';
import 'package:ecommerce_app/widgets/round_custom_button.dart';
import 'package:ecommerce_app/widgets/user_card.dart';
import 'package:ecommerce_app/colors.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final List<String> imagePaths = [
    'assets/shirt.png',
    'assets/hoodie.png',
    'assets/trouser.png'
  ];
  String? selectedSize;
  String? selectedColor;
  String? selectedQuantity;

  final List<Map<String, dynamic>> reviews = [
    {
      'imagePath': 'assets/face.jpg',
      'userName': 'John Doe',
      'rating': 4.0,
      'ratingDescription':
          'Great product! The quality is excellent and it fits perfectly. Highly recommend!',
      'daysAgo': '12',
    },
    {
      'imagePath': 'assets/face.jpg',
      'userName': 'Jane Smith',
      'rating': 5.0,
      'ratingDescription':
          'Absolutely love it! The material is top-notch and the design is stylish.',
      'daysAgo': '8',
    },
    {
      'imagePath': 'assets/face.jpg',
      'userName': 'Alice Johnson',
      'rating': 3.5,
      'ratingDescription':
          'Good product, but the size runs a bit small. Overall, satisfied with the purchase.',
      'daysAgo': '5',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenBackground,
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RoundCustomButton(
                      radius: 25,
                      color: AppColors.roundCustomButtonBackground,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(imagePaths.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: SizedBox(
                          width: 150,
                          child: CustomClothBox(
                            imagePath: imagePaths[index],
                            onButtonPressed: () {},
                            showIconButton: false,
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Product Name',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.titleText,
                  ),
                ),
                const Text(
                  'Product Price',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
                const SizedBox(height: 20),
                CustomDropdown(
                  items: const ['Small', 'Medium', 'Large'],
                  value: selectedSize,
                  backgroundColor: AppColors.customDropDownBackground,
                  textColor: AppColors.text1,
                  onChanged: (value) {
                    setState(() {
                      selectedSize = value;
                    });
                  },
                  borderRadius: 25.0,
                  hintText: 'Select Size',
                ),
                const SizedBox(height: 10),
                CustomDropdown(
                  items: const ['Red', 'Blue', 'Green'],
                  value: selectedColor,
                  backgroundColor: AppColors.customDropDownBackground,
                  textColor: AppColors.text1,
                  onChanged: (value) {
                    setState(() {
                      selectedColor = value;
                    });
                  },
                  borderRadius: 25.0,
                  hintText: 'Select Color',
                ),
                const SizedBox(height: 10),
                CustomDropdown(
                  items: const ['1', '2', '3'],
                  value: selectedQuantity,
                  backgroundColor: AppColors.customDropDownBackground,
                  textColor: AppColors.text1,
                  onChanged: (value) {
                    setState(() {
                      selectedQuantity = value;
                    });
                  },
                  borderRadius: 25.0,
                  hintText: 'Select Quantity',
                ),
                const SizedBox(height: 10),
                Text(
                  'This stylish shirt is made from high-quality materials and offers a comfortable fit. Perfect for casual outings or formal events, it comes in various sizes and colors to suit your preference.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.text3,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  '200 Reviews',
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColors.text3,
                  ),
                ),
                const SizedBox(height: 10),
                Column(
                  children: reviews.map((review) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: UserCard(
                        imagePath: review['imagePath'],
                        userName: review['userName'],
                        rating: review['rating'],
                        ratingDescription: review['ratingDescription'],
                        daysAgo: review['daysAgo'],
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 80),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              color: AppColors.screenBackground,
              child: BoxCustomButton(
                text: 'Add to Cart',
                backgroundColor: AppColors.primary,
                textColor: AppColors.boxCustomButtonText,
                onPressed: () {},
                borderRadius: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
