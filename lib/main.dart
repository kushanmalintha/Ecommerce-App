import 'package:ecommerce_app/home_page/home_screen.dart';
import 'package:ecommerce_app/home_page/search_result.dart';
import 'package:ecommerce_app/home_page/shop_by_catogory.dart';
import 'package:ecommerce_app/login&onboarding/about_yourself.dart';
import 'package:ecommerce_app/login&onboarding/create_acccount.dart';
import 'package:ecommerce_app/login&onboarding/forgot_pwd.dart';
import 'package:ecommerce_app/login&onboarding/send_email.dart';
import 'package:ecommerce_app/login&onboarding/sign_in_email.dart';
import 'package:ecommerce_app/login&onboarding/sign_in_pwd.dart';
import 'package:ecommerce_app/login&onboarding/splash.dart';
import 'package:ecommerce_app/notification_page/no_notification.dart';
import 'package:ecommerce_app/notification_page/with_notification.dart';
import 'package:ecommerce_app/orders_page/inside_order.dart';
import 'package:ecommerce_app/orders_page/no_order.dart';
import 'package:ecommerce_app/orders_page/with_order.dart';
import 'package:ecommerce_app/product_page/cart_empty.dart';
import 'package:ecommerce_app/product_page/cart_full.dart';
import 'package:ecommerce_app/product_page/product_page.dart';
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
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignInEmailScreen())),
                child: const Text('Sign In Email'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CreateAccountScreen())),
                child: const Text('Create Account'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ForgotPasswordScreen())),
                child: const Text('Forgot Password'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AboutYourselfScreen())),
                child: const Text('About Yourself'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SendEmailScreen())),
                child: const Text('Send Email'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignInPwdScreen())),
                child: const Text('Sign In Password'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SplashScreen())),
                child: const Text('Splash Screen'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchResultScreen())),
                child: const Text('Search Result'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShopByCategoryScreen())),
                child: const Text('Shop by Category'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen())),
                child: const Text('Home Screen'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NoNotificationScreen())),
                child: const Text('No notification Screen'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WithNotificationScreen())),
                child: const Text('With notification Screen'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NoOrderScreen())),
                child: const Text('No order Screen'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WithOrderScreen())),
                child: const Text('With order Screen'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InsideOrderScreen())),
                child: const Text('Inside order Screen'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProductScreen())),
                child: const Text('Product Screen'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CartEmptyScreen())),
                child: const Text('Cart Empty Screen'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CartFullScreen())),
                child: const Text('Cart Full Screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
