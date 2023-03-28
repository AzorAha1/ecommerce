import 'package:flutter/material.dart';

class Errorpage extends StatelessWidget {
  const Errorpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Image.asset('assets/items/sadcat.jpg'),
        ],
      ),
    );
  }
}
