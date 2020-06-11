import 'package:flutter/material.dart';
import 'package:trips_app/button.dart';

class DescriptionPlace extends StatelessWidget {
  
  String placeName;
  int stars;
  String placeDescription;

  DescriptionPlace(this.placeName, this.stars, this.placeDescription);
  
  @override
  Widget build(BuildContext context) {


    final halfStar = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_half,
        color: Colors.yellow,
      ),
    );   

    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Colors.yellow,
      ),
    );

    final emptyStar = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_border,
        color: Colors.yellow,
      ),
    );  

    final description = Container(
          margin: EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 20.0
          ),
          child: Text(
            placeDescription,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 17.0, 
              fontWeight: FontWeight.normal, 
              color: Colors.grey[500]
            )
          ),
        );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            placeName,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            halfStar,
            emptyStar,
          ],
        )
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title_stars,
        description,
        Button('Navigate'),
      ],
    );
  }
}