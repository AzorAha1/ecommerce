import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ecommerce/routing/approute.dart';

List listofitems = [
  newCard(
    onpress: onpress,
    nametext: 'Photo-Copier',
    id: '1',
    image: 'copier.png',
    price: '50',
    rating: '2.5',
  ),
  newCard(
    onpress: onpress,
    nametext: 'Headset',
    id: '2',
    image: 'headset.png',
    price: '14',
    rating: '2.5',
  ),
  newCard(
    onpress: onpress,
    nametext: 'Keyboard',
    id: '3',
    image: 'keyboard.png',
    price: '40',
    rating: '3.5',
  ),
  newCard(
    onpress: onpress,
    nametext: 'Mic',
    id: '4',
    image: 'mic.png',
    price: '30',
    rating: '2.8',
  ),
  newCard(
    onpress: onpress,
    nametext: 'Monitor',
    id: '5',
    image: 'monitor.png',
    price: '20',
    rating: '2.8',
  ),
  newCard(
    onpress: onpress,
    nametext: 'Mouse',
    id: '6',
    image: 'mouse.png',
    price: '50',
    rating: '2.5',
  ),
  newCard(
    onpress: onpress,
    nametext: 'Printer',
    id: '7',
    image: 'printer.png',
    price: '70',
    rating: '5.0',
  ),
  newCard(
    onpress: onpress,
    nametext: 'UPS',
    id: '8',
    image: 'ups.png',
    price: '50',
    rating: '2.5',
  ),
  newCard(
    onpress: onpress,
    nametext: 'Battery',
    id: '9',
    image: 'battery.png',
    price: '50',
    rating: '2.5',
  ),
];

dynamic currentuser = FirebaseAuth.instance.currentUser;
Function()? onpress;
Widget user({Function()? route1, Function()? route2}) {
  currentuser = FirebaseAuth.instance.currentUser;
  if (currentuser != null) {
    return InkWell(
      onTap: route1,
      child: Text('Account'),
    );
  } else if (currentuser == null) {
    return InkWell(
      child: Text('Sign In'),
      onTap: route2,
    );
  }
  return currentuser;
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(currentuser);
  }

  String previewimage = '';
  String itemname = '';
  String star_rating = '';
  String itemprice = '';
  String id = '';

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
            onTap: () => context.goNamed(AppRoute.shoppingcart.name),
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
            padding: EdgeInsets.only(top: 20, right: 40),
            child: user(
              route1: () => context.goNamed(AppRoute.home.name),
              route2: () => context.goNamed(AppRoute.signin.name),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    padding: const EdgeInsets.only(
                      right: 100,
                      left: 10,
                    ),
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Search Items'),
                    ),
                  ))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: newCard(
                      id: '1',
                      image: 'copier.png',
                      nametext: 'Photo-Copier',
                      rating: '2.5',
                      price: '50',
                      onpress: () {
                        setState(() {
                          id = '1';
                          previewimage = 'copier.png';
                          itemname = 'Photo-Copier';
                          star_rating = '2.5';
                          itemprice = '50';
                        });
                        // Navigator.pushNamed(context, '/buypage', arguments: {
                        //   'previewimage': previewimage,
                        //   'itemname': itemname,
                        //   'starrating': star_rating,
                        //   'itemprice': itemprice
                        // });
                        try {
                          context.go('/buypage/$id', extra: {
                            'id': id,
                            'previewimage': previewimage,
                            'itemname': itemname,
                            'starrating': star_rating,
                            'itemprice': itemprice,
                          });
                        } catch (e) {
                          print(e.toString());
                        }
                      },
                    ),
                  ),
                  Expanded(
                    child: newCard(
                      id: '2',
                      image: 'headset.png',
                      nametext: 'Headset',
                      rating: '2.5',
                      price: '14',
                      onpress: () {
                        setState(() {
                          id = '2';
                          previewimage = 'headset.png';
                          itemname = 'Headset';
                          star_rating = '2.5';
                          itemprice = '14';

                          try {
                            context.go('/buypage/$id', extra: {
                              'id': id,
                              'previewimage': previewimage,
                              'itemname': itemname,
                              'starrating': star_rating,
                              'itemprice': itemprice,
                            });
                          } catch (e) {
                            print(e.toString());
                          }
                        });

                        // Navigator.pushNamed(context, '/buypage', arguments: {
                        //   'previewimage': previewimage,
                        //   'itemname': itemname,
                        //   'starrating': star_rating,
                        //   'itemprice': itemprice
                        // });
                      },
                    ),
                  ),
                  Expanded(
                    child: newCard(
                      id: '3',
                      image: 'keyboard.png',
                      nametext: 'Keyboard',
                      rating: '3.5',
                      price: '40',
                      onpress: () {
                        setState(() {
                          id = '3';
                          previewimage = 'keyboard.png';
                          itemname = 'Keyboard';
                          star_rating = '3.5';
                          itemprice = '40';
                        });
                        try {
                          context.go('/buypage/$id', extra: {
                            'id': id,
                            'previewimage': previewimage,
                            'itemname': itemname,
                            'starrating': star_rating,
                            'itemprice': itemprice,
                          });
                        } catch (e) {
                          print(e.toString());
                        }
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: newCard(
                      id: '4',
                      image: 'mic.png',
                      nametext: 'Mic',
                      rating: '2.8',
                      price: '30',
                      onpress: () {
                        setState(() {
                          id = '4';
                          itemname = 'Mic';
                          previewimage = 'mic.png';
                          star_rating = '2.8';
                          itemprice = '30';
                        });
                        // Navigator.pushNamed(context, '/buypage', arguments: {
                        //   'previewimage': previewimage,
                        //   'itemname': itemname,
                        //   'starrating': star_rating,
                        //   'itemprice': itemprice
                        // });

                        try {
                          context.go('/buypage/$id', extra: {
                            'id': id,
                            'previewimage': previewimage,
                            'itemname': itemname,
                            'starrating': star_rating,
                            'itemprice': itemprice,
                          });
                        } catch (e) {
                          print(e.toString());
                        }
                      },
                    ),
                  ),
                  Expanded(
                    child: newCard(
                      id: '5',
                      image: 'monitor.png',
                      nametext: 'Monitor',
                      rating: '2.8',
                      price: '20',
                      onpress: () {
                        setState(() {
                          id = '5';
                          itemname = 'Monitor';
                          previewimage = 'monitor.png';
                          star_rating = '2.8';
                          itemprice = '20';
                        });
                        try {
                          context.go('/buypage/$id', extra: {
                            'id': id,
                            'previewimage': previewimage,
                            'itemname': itemname,
                            'starrating': star_rating,
                            'itemprice': itemprice,
                          });
                        } catch (e) {
                          print(e.toString());
                        }
                      },
                    ),
                  ),
                  Expanded(
                    child: newCard(
                      id: '6',
                      image: 'mouse.png',
                      nametext: 'Mouse',
                      rating: '2.5',
                      price: '25',
                      onpress: () {
                        setState(() {
                          id = '6';
                          previewimage = 'mouse.png';
                          itemname = 'Mouse';
                          star_rating = '2.5';
                          itemprice = '25';
                        });
                        try {
                          context.go('/buypage/$id', extra: {
                            'id': id,
                            'previewimage': previewimage,
                            'itemname': itemname,
                            'starrating': star_rating,
                            'itemprice': itemprice,
                          });
                        } catch (e) {
                          print(e.toString());
                        }

                        // Navigator.pushNamed(context, '/buypage', arguments: {
                        //   'previewimage': previewimage,
                        //   'itemname': itemname,
                        //   'starrating': star_rating,
                        //   'itemprice': itemprice
                        // });
                      },
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: newCard(
                      id: '7',
                      image: 'printer.png',
                      nametext: 'Printer',
                      rating: '5.0',
                      price: '70',
                      onpress: () {
                        setState(() {
                          id = '7';
                          previewimage = 'printer.png';
                          itemname = 'Printer';
                          star_rating = '5';
                          itemprice = '70';
                        });
                        try {
                          context.go('/buypage/$id', extra: {
                            'id': id,
                            'previewimage': previewimage,
                            'itemname': itemname,
                            'starrating': star_rating,
                            'itemprice': itemprice,
                          });
                        } catch (e) {
                          print(e.toString());
                        }
                      },
                    ),
                  ),
                  Expanded(
                    child: newCard(
                      id: '8',
                      image: 'ups.png',
                      nametext: 'UPS',
                      rating: '4.5',
                      price: '50',
                      onpress: () {
                        setState(() {
                          id = '8';
                          previewimage = 'ups.png';
                          itemname = 'UPS';
                          star_rating = '4.5';
                          itemprice = '50';
                        });
                        context.go('/buypage/$id', extra: {
                          'id':id,
                          'previewimage': previewimage,
                          'itemname': itemname,
                          'starrating': star_rating,
                          'itemprice': itemprice
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: newCard(
                      id: '9',
                      image: 'battery.png',
                      nametext: 'Battery',
                      rating: '3.5',
                      price: '65',
                      onpress: () {
                        setState(() {
                          id = '9';
                          previewimage = 'battery.png';
                          itemname = 'Battery';
                          star_rating = '3.5';
                          itemprice = '65';
                        });
                        try {
                          context.go('/buypage/$id', extra: {
                            'id': id,
                            'previewimage': previewimage,
                            'itemname': itemname,
                            'starrating': star_rating,
                            'itemprice': itemprice,
                          });
                        } catch (e) {
                          print(e.toString());
                        }
                      },
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}

class newCard extends StatefulWidget {
  String id;
  String? image;
  newCard(
      {this.image,
      this.nametext,
      required this.id,
      @required this.onpress,
      required this.rating,
      required this.price});
  String? nametext;
  Function()? onpress;
  String rating;
  String price;

  @override
  State<newCard> createState() => _newCardState();
}

class _newCardState extends State<newCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: MaterialButton(
        height: 300,
        color: Colors.white,
        onPressed: widget.onpress,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Card(
            child: Image.asset(
              'assets/items/${widget.image}',
              height: 100,
              width: 200,
            ),
          ),
          Divider(
            indent: 15,
            endIndent: 15,
            thickness: 0.85,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '${widget.nametext}',
                style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  InkWell(
                      child: Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 241, 230, 132),
                  )),
                  Text(widget.rating.toString()),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              Text('2 ratings'),
              SizedBox(
                height: 30,
              ),
            ],
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: '\$ ',
                    style: TextStyle(color: Colors.green, fontSize: 25)),
                TextSpan(
                    text: '${widget.price}', style: TextStyle(fontSize: 25)),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Quantity: 5',
            style: TextStyle(fontSize: 10),
          ),
        ]),
      ),
    );
  }
}
