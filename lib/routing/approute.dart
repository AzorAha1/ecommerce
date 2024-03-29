import 'package:ecommerce/Screens/buyitempage.dart';
import 'package:ecommerce/Screens/checkout.dart';
import 'package:ecommerce/Screens/home.dart';

import 'package:ecommerce/Screens/review.dart';
import 'package:ecommerce/Screens/shoppingcart.dart';
import 'package:ecommerce/Screens/signin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce/Screens/errorpage.dart';

import '../Screens/homepage.dart';

enum AppRoute {
  homepage,
  buypage,
  shoppingcart,
  checkout,
  review,
  signin,
  home,
}

final router = GoRouter(
 
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
        path: '/',
        name: AppRoute.homepage.name,
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
            path: 'buypage/:id',
            name: AppRoute.buypage.name,
            builder: (context, state) {
              return BuyPage(
              
                map: state.extra as Map,
              );
            },
          ),
          GoRoute(
            path: 'shoppingcart',
            name: AppRoute.shoppingcart.name,
            pageBuilder: (context, state) {
              return MaterialPage(
                  child: Shoppingcart(),
                  fullscreenDialog: true,
                  key: state.pageKey);
            },
          ),
          GoRoute(
            name: AppRoute.checkout.name,
            path: 'checkout',
            builder: (context, state) => const Checkout(),
          ),
          GoRoute(
            name: AppRoute.review.name,
            path: 'review',
            builder: (context, state) => const Review(),
          ),
          GoRoute(
            name: AppRoute.signin.name,
            path: 'signin',
            builder: (context, state) => const Signin(),
          ),
          GoRoute(
            name: AppRoute.home.name,
            path: 'home',
            builder: (context, state) => const Home(),
          ),
        ]),
  
  ],
  errorBuilder: (context, state) => const Errorpage(),
);
