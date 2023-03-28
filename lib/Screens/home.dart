import 'package:ecommerce/routing/approute.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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

    String email = map['email'] ?? 'Nothing available';
    String password = map['password'] ?? 'Nothing available';
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(FirebaseAuth.instance.currentUser!.email.toString()),
        SizedBox(
          height: 10,
        ),
        Text(FirebaseAuth.instance.currentUser!.uid),
        SizedBox(
          height: 50,
        ),
        MaterialButton(
          child: Text('Sign out'),
          onPressed: () async {
            await FirebaseAuth.instance.signOut();
            context.goNamed(AppRoute.homepage.name);
          },
          color: Colors.red,
        )
      ],
    );
  }
}
