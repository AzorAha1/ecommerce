import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Review extends StatefulWidget {
  const Review({super.key});

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  int rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Leave a review',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: RatingBar(
                glow: false,
                ratingWidget: RatingWidget(
                  full: Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  half: Icon(
                    Icons.star,
                    color: Colors.grey,
                  ),
                  empty: Icon(
                    Icons.star,
                    color: Colors.grey,
                  ),
                ),
                onRatingUpdate: (newvalue) {
                  setState(() {
                    rating = newvalue.toInt();
                    print(rating);
                  });
                }),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 15, top: 0, bottom: 100),
                label: Text('Your Review(Optional)'),
                focusedBorder: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
              ),
            ),
          ),
          Row(
            children: [

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: MaterialButton(
                    child: Text(
                      'Submit',
                      style: TextStyle(color: Colors.white),
                    ),
                    minWidth: 100,
                    height: 50,
                    onPressed: () {},
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
