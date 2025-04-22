import 'package:ecommerce_app/widgets/box_custom_button.dart';
import 'package:ecommerce_app/widgets/custom_textfield.dart';
import 'package:ecommerce_app/widgets/round_custom_button.dart';
import 'package:ecommerce_app/colors.dart';
import 'package:flutter/material.dart';

class AddPaymentScreen extends StatefulWidget {
  const AddPaymentScreen({super.key});

  @override
  State<AddPaymentScreen> createState() => _AddPaymentScreenState();
}

class _AddPaymentScreenState extends State<AddPaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenBackground,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RoundCustomButton(
                        radius: 25,
                        color: AppColors.roundCustomButtonBackground,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      const Text(
                        'Add Payment',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w900,
                          color: AppColors.titleText,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  CustomTextField(
                    baseColor: AppColors.customTextFeildBase,
                    fieldColor: AppColors.customTextFeildFeild,
                    hint: "Card Number",
                    inputType: TextInputType.number,
                    radius: 10,
                  ),
                  const SizedBox(height: 10),
                  CustomTextField(
                    baseColor: AppColors.customTextFeildBase,
                    fieldColor: AppColors.customTextFeildFeild,
                    hint: "Card Holder Name",
                    inputType: TextInputType.text,
                    radius: 10,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          baseColor: AppColors.customTextFeildBase,
                          fieldColor: AppColors.customTextFeildFeild,
                          hint: "CCV",
                          inputType: TextInputType.number,
                          radius: 10,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: CustomTextField(
                          baseColor: AppColors.customTextFeildBase,
                          fieldColor: AppColors.customTextFeildFeild,
                          hint: "Expiry Date",
                          inputType: TextInputType.datetime,
                          radius: 10,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  BoxCustomButton(
                    text: 'Save Card',
                    backgroundColor: AppColors.primary,
                    textColor: AppColors.boxCustomButtonText,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    borderRadius: 25.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
