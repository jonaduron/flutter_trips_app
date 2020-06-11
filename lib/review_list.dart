import 'package:flutter/material.dart';
import 'package:trips_app/review.dart';

class ReviewList extends StatelessWidget {

  @override   
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/people.jpg", "Kobe Bryant", "1 review | 5 photos", "It is an actually really peaceful place"),
        Review("assets/img/girl.jpg", "Varuna Yasas", "4 reviews | 3 photos", "It is an actually really peaceful place"),
        Review("assets/img/boy.jpg", "Chris Patt", "3 reviews | 2 photos", "It is an actually really peaceful place"),
      ],
    );
  }
}