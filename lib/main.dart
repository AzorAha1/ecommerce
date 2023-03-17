import 'dart:js';

import 'package:ecommerce/buyitempage.dart';
import 'package:ecommerce/checkout.dart';
import 'package:ecommerce/home.dart';
import 'package:ecommerce/homepage.dart';
import 'package:ecommerce/review.dart';
import 'package:ecommerce/routing/approute.dart';
import 'package:ecommerce/shoppingcart.dart';
import 'package:ecommerce/signin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyCyqYdJRbuujmsj3vu_Xsie0ihSEblKbaE",
          appId: "1:178194560913:web:6e1660ada012950807cc30",
          messagingSenderId: "178194560913",
          projectId: "ecommerce-73e87"));

  setUrlStrategy(PathUrlStrategy());

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
    return MaterialApp.router(
      routerConfig: router,
      //initialRoute: '/',
      // routes: {
      //   '/': (context) => const HomePage(),
      //   '/buypage': (context) => BuyPage(),
      //   '/review': (context) => Review(),
      //   '/shoppingcart': (context) => Shoppingcart(),
      //   '/checkout': (context) => Checkout(),
      //   '/signin': (context) => Signin(),
      //   '/home': (context) => Home(),
      // },
    );
  }
}
