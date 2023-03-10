import 'package:ecommerce/buyitempage.dart';
import 'package:ecommerce/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => const HomePage(),
        '/buypage':(context) => const BuyPage(),
      },
    );
  }
}