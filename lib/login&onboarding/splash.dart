import 'package:flutter/material.dart';
import 'package:ecommerce_app/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    _fadeInText();
  }

  void _fadeInText() {
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: AppColors.primary),
      child: Center(
        child: AnimatedOpacity(
          opacity: _opacity,
          duration: const Duration(seconds: 3),
          child: const Text(
            "C l o t",
            style: TextStyle(
              color: AppColors.text4,
              decoration: TextDecoration.none,
              fontSize: 50,
            ),
          ),
        ),
      ),
    );
  }
}
