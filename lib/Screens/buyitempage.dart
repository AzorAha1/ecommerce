import 'dart:js_util';

import 'package:ecommerce/homepage.dart';
import 'package:ecommerce/routing/approute.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

dynamic currentuser = FirebaseAuth.instance.currentUser;

Widget user({Function()? route1, Function()? route2}) {
  if (currentuser == null) {
    return InkWell(
      child: Text('Sign in'),
      onTap: route1,
    );
  } else if (currentuser != null) {
    return InkWell(
      child: Text('Account'),
      onTap: route2,
    );
  }
  return currentuser;
}

class BuyPage extends StatelessWidget {
  BuyPage({
    super.key,
    required this.map,
  });

  // String previewimage;
  // String itemname;
  // String itemprice;
  // String starrating;

  Map map;

  int quantitynum = 0;

  @override
  Widget build(BuildContext context) {
    var mainimage = map['previewimage'];

    // String? previewimage = map['previewimage'];
    // String? itemname = map['itemname'];
    // String? itemprice = map['itemprice'];
    // String? starrating = map['starrating'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'My Shop',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          InkWell(
            onTap: () => Navigator.pushNamed(context, '/shoppingcart'),
            child: Icon(Icons.shopping_cart),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 5, left: 20),
            child: InkWell(
              child: Text('Orders'),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 40, left: 20),
            child: InkWell(
              child: user(
                route1: () => context.goNamed(AppRoute.signin.name),
                route2: ()=> context.goNamed(AppRoute.home.name),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Card(
                      child: Image.asset('assets/items/$mainimage'),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            map['itemname'],
                            style: GoogleFonts.aBeeZee(
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.star,
                                color: Color.fromARGB(255, 241, 230, 132),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(map['starrating']),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Divider(
                            indent: 10,
                            endIndent: 10,
                            thickness: 1.0,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: '\$ ',
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 25)),
                                TextSpan(
                                    text: map['itemprice'],
                                    style: TextStyle(fontSize: 25)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Divider(
                            indent: 10,
                            endIndent: 10,
                            thickness: 1.0,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  child: Text(
                                      'Purchased item on 10th March, 2023')),
                              InkWell(
                                onTap: () {
                                  context.goNamed(AppRoute.review.name);
                                },
                                child: Text(
                                  'Leave a Review',
                                  style:
                                      GoogleFonts.aBeeZee(color: Colors.green),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Divider(
                            indent: 10,
                            endIndent: 10,
                            thickness: 1.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Quantity'),
                              Addandsub(),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Divider(
                            indent: 10,
                            endIndent: 10,
                            thickness: 1.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: MaterialButton(
                                  child: Text(
                                    'Add to Cart',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  minWidth: 100,
                                  onPressed: () {},
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Addandsub extends StatefulWidget {
  const Addandsub({super.key});

  @override
  State<Addandsub> createState() => _AddandsubState();
}

class _AddandsubState extends State<Addandsub> {
  int quantitynum = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 70,
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.red)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
              onTap: () {
                setState(() {
                  if (quantitynum != 0) {
                    quantitynum -= 1;
                  }
                });
              },
              child: Icon(
                Icons.remove,
                size: 11,
              )),
          Text(quantitynum.toString()),
          InkWell(
            child: Icon(
              Icons.add,
              size: 11,
            ),
            onTap: () {
              if (quantitynum < 10) {
                setState(() {
                  quantitynum += 1;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
