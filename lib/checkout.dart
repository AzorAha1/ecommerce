import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  final _auth = FirebaseAuth.instance;
  bool Loading = false;

  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: Loading,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Register',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Form(
                child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 50, right: 50, bottom: 10),
                  child: TextFormField(
                    onChanged: (value) {
                      setState(() {
                        email = value;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Email',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: TextFormField(
                    onChanged: (value) {
                      setState(() {
                        password = value;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Password',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                ),
              ],
            )),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MaterialButton(
                onPressed: () async {
                  setState(() {
                    Loading = true;
                  });
                  dynamic result = await _auth.createUserWithEmailAndPassword(
                      email: email, password: password);

                  if (result != null) {
                    // Navigator.pushReplacementNamed(context, '/home',
                    //     arguments: {'email': email, 'password': password});
                    GoRouter.of(context).goNamed('/home',params: {'email': email, 'password': password});
                  }
                  setState(() {
                    Loading = false;
                  });
                },
                height: 60,
                minWidth: 200,
                color: Colors.black,
                child: Text('Create Account',
                    style: TextStyle(color: Colors.white)),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/signin');
              },
              child: Text(
                'Already have an Account ? Click to Sign in',
                style: TextStyle(color: Color.fromARGB(255, 180, 180, 180)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
