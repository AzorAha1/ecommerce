import 'package:ecommerce/Screens/buyitempage.dart';
import 'package:ecommerce/Screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Shoppingcart extends StatefulWidget {
  const Shoppingcart({super.key});

  @override
  State<Shoppingcart> createState() => _ShoppingcartState();
}

class _ShoppingcartState extends State<Shoppingcart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shopping Cart',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    cardnow(),
                    cardnow(),
                    cardnow(),
                  ],
                ),
              ),
              Column(
                children: [
                  
                  Text('Total:\$ 100'),
                  MaterialButton(
                    child: Text(
                      'Checkout',
                      style: TextStyle(color: Colors.white),
                    ),
                    height: 30,
                    minWidth: 150,
                    onPressed: () {
                      context.go('/checkout');
                    },
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class cardnow extends StatelessWidget {
  const cardnow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 5),
      child: Row(
        children: [
          Image.asset(
            'assets/items/mouse.png',
            height: 180,
            width: 300,
          ),
          Column(
            children: [
              Text('Mouse'),
              SizedBox(
                height: 5,
              ),
              Text('17.00'),
              SizedBox(
                height: 5,
              ),
              Addandsub(),
            ],
          )
        ],
      ),
    );
  }
}
