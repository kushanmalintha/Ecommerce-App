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
      backgroundColor: Colors.white,
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
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                  decoration: TextDecoration.none,
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                'Who do you shop for?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                  decoration: TextDecoration.none,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150,
                    child: BoxCustomButton(
                      text: "Men",
                      backgroundColor: const Color.fromRGBO(142, 108, 239, 1),
                      textColor: Colors.white,
                      onPressed: () {
                        // Handle Men button press
                      },
                      borderRadius: 25.0,
                    ),
                  ),
                  const SizedBox(width: 20),
                  SizedBox(
                    width: 150,
                    child: BoxCustomButton(
                      text: "Women",
                      backgroundColor: Colors.grey[200]!,
                      textColor: Colors.black,
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
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                  decoration: TextDecoration.none,
                ),
              ),
              const SizedBox(height: 10),
              CustomDropdown(
                items: const ['18 - 25', '25 - 35', '35 - more'],
                value: selectedAge,
                backgroundColor: Colors.grey[200]!,
                textColor: Colors.black,
                hintText: 'Select Age Range',
                onChanged: (value) {
                  setState(() {
                    selectedAge = value;
                  });
                },
                borderRadius: 25.0,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.4),
              BoxCustomButton(
                text: "Finish",
                backgroundColor: const Color.fromRGBO(142, 108, 239, 1),
                textColor: Colors.white,
                onPressed: () {},
                borderRadius: 25.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
