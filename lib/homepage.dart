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
  String previewimage = '';
  String itemname = '';
  String star_rating = '';
  String itemprice = '';
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
              child: Text('Account'),
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
                      image: 'copier.png',
                      nametext: 'Photo-Copier',
                      rating: '2.5',
                      price: '50',
                      onpress: () {
                        setState(() {
                          previewimage = 'copier.png';
                          itemname = 'Photo-Copier';
                          star_rating = '2.5';
                          itemprice = '50';
                        });
                        Navigator.pushNamed(context, '/buypage', arguments: {
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
                      image: 'headset.png',
                      nametext: 'Headset',
                      rating: '2.5',
                      price: '14',
                      onpress: () {
                        setState(() {
                          previewimage = 'headset.png';
                          itemname = 'Headset';
                          star_rating = '2.5';
                          itemprice = '14';
                        });
                        Navigator.pushNamed(context, '/buypage', arguments: {
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
                      image: 'keyboard.png',
                      nametext: 'Keyboard',
                      rating: '3.5',
                      price: '40',
                      onpress: () {
                        setState(() {
                          previewimage = 'keyboard.png';
                          itemname = 'Keyboard';
                          star_rating = '3.5';
                          itemprice = '40';
                        });
                        Navigator.pushNamed(context, '/buypage', arguments: {
                          'previewimage': previewimage,
                          'itemname': itemname,
                          'starrating': star_rating,
                          'itemprice': itemprice
                        });
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
                      image: 'mic.png',
                      nametext: 'Mic',
                      rating: '2.8',
                      price: '30',
                      onpress: () {
                        setState(() {
                          itemname = 'Mic';
                          previewimage = 'mic.png';
                          star_rating = '2.8';
                          itemprice = '30';
                        });
                        Navigator.pushNamed(context, '/buypage', arguments: {
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
                      image: 'monitor.png',
                      nametext: 'Monitor',
                      rating: '2.8',
                      price: '20',
                      onpress: () {
                        setState(() {
                          itemname = 'Monitor';
                          previewimage = 'monitor.png';
                          star_rating = '2.8';
                          itemprice = '20';
                        });
                        Navigator.pushNamed(context, '/buypage', arguments: {
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
                      image: 'mouse.png',
                      nametext: 'Mouse',
                      rating: '2.5',
                      price: '25',
                      onpress: () {
                        setState(() {
                          previewimage = 'mouse.png';
                          itemname = 'Mouse';
                          star_rating = '2.5';
                          itemprice = '25';
                        });
                        Navigator.pushNamed(context, '/buypage', arguments: {
                          'previewimage': previewimage,
                          'itemname': itemname,
                          'starrating': star_rating,
                          'itemprice': itemprice
                        });
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
                      image: 'printer.png',
                      nametext: 'Printer',
                      rating: '5',
                      price: '70',
                      onpress: () {
                        setState(() {
                          previewimage = 'printer.png';
                          itemname = 'Printer';
                          star_rating = '5';
                          itemprice = '70';
                        });
                        Navigator.pushNamed(context, '/buypage', arguments: {
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
                      image: 'ups.png',
                      nametext: 'UPS',
                      rating: '4.5',
                      price: '50',
                      onpress: () {
                        setState(() {
                          previewimage = 'ups.png';
                          itemname = 'UPS';
                          star_rating = '4.5';
                          itemprice = '50';
                        });
                        Navigator.pushNamed(context, '/buypage', arguments: {
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
                      image: 'battery.png',
                      nametext: 'Battery',
                      rating: '3.5',
                      price: '65',
                      onpress: () {
                        setState(() {
                          previewimage = 'battery.png';
                          itemname = 'Battery';
                          star_rating = '3.5';
                          itemprice = '65';
                        });
                        Navigator.pushNamed(context, '/buypage', arguments: {
                          'previewimage': previewimage,
                          'itemname': itemname,
                          'starrating': star_rating,
                          'itemprice': itemprice
                        });
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
  String? image;
  newCard(
      {this.image,
      this.nametext,
      @required this.onpress,
      this.rating,
      this.price});
  String? nametext;
  Function()? onpress;
  String? rating;
  String? price;

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
                  Text(widget.rating!),
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


// SingleChildScrollView(
//       child: Column(
//         children: [
//           MaterialButton(
//             minWidth: 200,
//             height: 200,
//             onPressed: widget.onpress,
//             child: Container(
//                 height: 200,
//                 width: 300,
//                 decoration: BoxDecoration(),
//                 child: Card(
//                   color: Color.fromARGB(255, 247, 245, 245),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Image.asset(
                        
//                         'assets/items/${widget.image}',
//                         height: 80,
//                         width: 200,
//                         color: Colors.white,
//                       ),
//                       Divider(
//                         indent: 15,
//                         endIndent: 15,
//                         thickness: 0.85,
//                       ),
//                       Text(
//                         '${widget.nametext}',
//                         style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),
//                       ),
//                       
//                       Row(
                      
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           InkWell(
//                               child: Icon(
//                             Icons.star,
//                             color: Colors.red,
//                           )),
//                           Text('4.5'),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Text('2 ratings'),
//                           SizedBox(
//                             height: 30,
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       RichText(
//                         text: TextSpan(
//                           children: [
//                             TextSpan(
//                                 text: '\$ ',
//                                 style: TextStyle(color: Colors.green)),
//                             TextSpan(text: '50', style: TextStyle(fontSize: 20)),
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 )),
//           ),
//         ],
//       ),
//     );