import 'package:ecommerce_app/colors.dart';
import 'package:ecommerce_app/home_page/main_screen.dart';
import 'package:ecommerce_app/widgets/box_custom_button.dart';
import 'package:ecommerce_app/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';

class AboutYourselfScreen extends StatefulWidget {
  const AboutYourselfScreen({super.key});

  @override
  State<AboutYourselfScreen> createState() => _AboutYourselfScreenState();
}

class _AboutYourselfScreenState extends State<AboutYourselfScreen> {
  String? selectedAge;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              const Text(
                'Tell us About Yourself',
                style: TextStyle(
                  color: AppColors.titleText,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                'Who do you shop for?',
                style: TextStyle(
                  color: AppColors.text1,
                  fontSize: 18,
                  decoration: TextDecoration.none,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 150,
                    child: BoxCustomButton(
                      text: "Men",
                      backgroundColor: AppColors.primary,
                      textColor: AppColors.boxCustomButtonText,
                      onPressed: () {
                        // Handle Men button press
                      },
                      borderRadius: 25.0,
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 150,
                    child: BoxCustomButton(
                      text: "Women",
                      backgroundColor: AppColors.boxCustomButtonBackground,
                      textColor: AppColors.text1,
                      onPressed: () {
                        // Handle Women button press
                      },
                      borderRadius: 25.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const Text(
                'How Old are you?',
                style: TextStyle(
                  color: AppColors.text1,
                  fontSize: 18,
                  decoration: TextDecoration.none,
                ),
              ),
              const SizedBox(height: 10),
              CustomDropdown(
                items: const ['18 - 25', '25 - 35', '35 - more'],
                value: selectedAge,
                backgroundColor: AppColors.customDropDownBackground,
                textColor: AppColors.text1,
                hintText: 'Select Age Range',
                onChanged: (value) {
                  setState(() {
                    selectedAge = value;
                  });
                },
                borderRadius: 25.0,
              ),
              const SizedBox(height: 50),
              BoxCustomButton(
                text: "Finish",
                backgroundColor: AppColors.primary,
                textColor: AppColors.boxCustomButtonText,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainScreen()));
                },
                borderRadius: 25.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
