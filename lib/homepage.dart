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
      body: SingleChildScrollView(
        child: Column(
          
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
            SizedBox(height: 10,),
            Row(
              children: [
                Expanded(
                  child: newCard(
                    image: 'copier.png',
                    nametext: 'Photo-Copier',
                    onpress: () {
                      Navigator.pushNamed(context, '/buypage');
                    },
                  ),
                ),
                Expanded(
                  child: newCard(
                    image: 'headset.png',
                    nametext: 'Headset',
                    onpress: () {
                      Navigator.pushNamed(context, '/buypage');
                    },
                  ),
                ),
                Expanded(
                  child: newCard(
                    image: 'keyboard.png',
                    nametext: 'Keyboard',
                    onpress: () {
                      Navigator.pushNamed(context, '/buypage');
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
                    image: 'keyboard.png',
                    nametext: 'Keyboard',
                    onpress: () {
                      Navigator.pushNamed(context, '/buypage');
                    },
                  ),
                ),
                Expanded(
                  child: newCard(
                    image: 'mic.png',
                    nametext: 'Mic',
                    onpress: () {
                      Navigator.pushNamed(context, '/buypage');
                    },
                  ),
                ),
                Expanded(
                  child: newCard(
                    image: 'monitor.png',
                    nametext: 'Monitor',
                    onpress: () {
                      Navigator.pushNamed(context, '/buypage');
                    },
                  ),
                )
              ],
            ),
             Row(
              children: [
                Expanded(
                  child: newCard(
                    image: 'keyboard.png',
                    nametext: 'Keyboard',
                    onpress: () {
                      Navigator.pushNamed(context, '/buypage');
                    },
                  ),
                ),
                Expanded(
                  child: newCard(
                    image: 'mic.png',
                    nametext: 'Mic',
                    onpress: () {
                      Navigator.pushNamed(context, '/buypage');
                    },
                  ),
                ),
                Expanded(
                  child: newCard(
                    image: 'monitor.png',
                    nametext: 'Monitor',
                    onpress: () {
                      Navigator.pushNamed(context, '/buypage');
                    },
                  ),
                )
              ],
            ),
          ]
        ),
      ),
    );
  }
}

class newCard extends StatefulWidget {
  String? image;
  newCard({this.image, this.nametext, @required this.onpress});
  String? nametext;
  Function()? onpress;

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
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
            ],
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