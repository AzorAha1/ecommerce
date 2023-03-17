import 'package:ecommerce/buyitempage.dart';
import 'package:ecommerce/checkout.dart';
import 'package:ecommerce/home.dart';
import 'package:ecommerce/homepage.dart';
import 'package:ecommerce/review.dart';
import 'package:ecommerce/shoppingcart.dart';
import 'package:ecommerce/signin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomePage(), routes: [
      GoRoute(
        path: 'buypage',
        builder: (context, state) => const BuyPage(),
      ),
      GoRoute(
        path: 'shoppingcart',
        pageBuilder: (context, state) {
          return MaterialPage(
              child: Shoppingcart(),
              fullscreenDialog: true,
              key: state.pageKey);
        },
      ),
      GoRoute(
        path: 'checkout',
        builder: (context, state) => const Checkout(),
      ),
      GoRoute(
        path: 'review',
        builder: (context, state) => const Review(),
      ),
      GoRoute(
        path: 'shoppingcart',
        builder: (context, state) => const Shoppingcart(),
      ),
      GoRoute(
        path: 'signin',
        builder: (context, state) => const Signin(),
      ),
      GoRoute(
        path: 'home',
        builder: (context, state) => const Home(),
      ),
    ]),
  ],
);
