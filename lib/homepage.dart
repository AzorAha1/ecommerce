import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'My Shop',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            InkWell(
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
                child: Text('Account'),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Row(
             
              children: [
                SizedBox(width: 100,),
                InkWell(child: Icon(Icons.search),),
                Expanded(child: Padding(
                  padding: const EdgeInsets.only(right: 100, left: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search Items'
                    ),
                  ),
                ))
              ],
            ),
            
          ],
        ),
        
        );
  }
}
