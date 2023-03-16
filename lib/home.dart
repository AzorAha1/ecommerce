import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map map = {};
  @override
  Widget build(BuildContext context) {
    map = ModalRoute.of(context)?.settings.arguments as Map;

    String email = map['email'];
    String password = map['password'];
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(email),
        SizedBox(height: 10,),
        Text(password),
      ],
    );
  }
}
