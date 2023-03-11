import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuyPage extends StatefulWidget {
  const BuyPage({super.key});

  @override
  State<BuyPage> createState() => _BuyPageState();
}

class _BuyPageState extends State<BuyPage> {
  Map map = {};
  int quantitynum = 0;

  @override
  Widget build(BuildContext context) {
    map = ModalRoute.of(context)?.settings.arguments as Map;
    String previewimage = map['previewimage'];
    String itemname = map['itemname'];
    String itemprice = map['itemprice'];
    String starrating = map['starrating'];
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
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Card(
                      child: Image.asset('assets/items/$previewimage'),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            itemname,
                            style: GoogleFonts.aBeeZee(
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.star,
                                color: Color.fromARGB(255, 241, 230, 132),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(starrating),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Divider(
                            indent: 10,
                            endIndent: 10,
                            thickness: 1.0,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: '\$ ',
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 25)),
                                TextSpan(
                                    text: '${itemprice}',
                                    style: TextStyle(fontSize: 25)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Divider(
                            indent: 10,
                            endIndent: 10,
                            thickness: 1.0,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  child: Text(
                                      'Purchased item on 10th March, 2023')),
                              
                              InkWell(
                                onTap: () {
                                  
                                },
                                child: Text(
                                  'Leave a Review',
                                  style: GoogleFonts.aBeeZee(
                                      color: Colors.green),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Divider(
                            indent: 10,
                            endIndent: 10,
                            thickness: 1.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Quantity'),
                              Container(
                                height: 30,
                                width: 70,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(color: Colors.red)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          setState(() {
                                            if (quantitynum != 0) {
                                              quantitynum -= 1;
                                            }
                                          });
                                        },
                                        child: Icon(
                                          Icons.remove,
                                          size: 11,
                                        )),
                                    Text(quantitynum.toString()),
                                    InkWell(
                                      child: Icon(
                                        Icons.add,
                                        size: 11,
                                      ),
                                      onTap: () {
                                        if (quantitynum < 10) {
                                          setState(() {
                                            quantitynum += 1;
                                          });
                                        }
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Divider(
                            indent: 10,
                            endIndent: 10,
                            thickness: 1.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: MaterialButton(
                                  child: Text('Add to Cart',style: TextStyle(color: Colors.white),),
                                  minWidth: 100,
                                  onPressed: () {},
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
