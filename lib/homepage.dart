import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
              SizedBox(
                width: 100,
              ),
              InkWell(
                child: Icon(Icons.search),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(right: 100, left: 10),
                child: TextField(
                  decoration: InputDecoration(hintText: 'Search Items'),
                ),
              ))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: [
                newCard(
                  image: 'copier.png',
                  nametext: 'Photo-Copier',
                ),
                newCard(
                  image: 'headset.png',
                  nametext: 'Headset',
                ),
                newCard(
                  image: 'keyboard.png',
                  nametext: 'Keyboard',
                ),
                newCard(
                  image: 'mic.png',
                  nametext: 'Mic',
                ),
                newCard(
                  image: 'monitor.png',
                  nametext: 'Monitor',
                ),
                newCard(
                  image: 'mouse.png',
                  nametext:'Mouse',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class newCard extends StatefulWidget {
  String? image;
  newCard({this.image, this.nametext});
  String? nametext;

  @override
  State<newCard> createState() => _newCardState();
}

class _newCardState extends State<newCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(),
            child: Card(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/items/${widget.image}',
                    height: 80,
                    width: 200,
                  ),
                  Divider(
                    indent: 15,
                    endIndent: 15,
                    thickness: 0.85,
                  ),
                  Text(
                    '${widget.nametext}',
                    style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                          child: Icon(
                        Icons.star,
                        color: Colors.red,
                      )),
                      Text('4.5'),
                      SizedBox(
                        width: 10,
                      ),
                      Text('2 ratings'),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: '\$ ', style: TextStyle(color: Colors.green)),
                        TextSpan(text: '50', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  )
                ],
              ),
            )),
      ],
    );
  }
}
