// import 'package:ecommerce_app/login&onboarding/sign_in_email.dart';
// import 'package:ecommerce_app/login&onboarding/create_acccount.dart';
// import 'package:ecommerce_app/login&onboarding/forgot_pwd.dart';
import 'package:ecommerce_app/login&onboarding/about_yourself.dart';
// import 'package:ecommerce_app/login&onboarding/send_email.dart';
// import 'package:ecommerce_app/login&onboarding/sign_in_pwd.dart';
// import 'package:ecommerce_app/login&onboarding/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AboutYourselfScreen(),
    );
  }
}
