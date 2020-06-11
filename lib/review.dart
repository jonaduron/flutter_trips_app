import 'package:flutter/material.dart';

class Review extends StatelessWidget {

  String imagePath = "assets/img/people.jpg";
  String name = "Varuna Yasas";
  String details = "1 review | 5 photos";
  String comment = "It is an actually really peaceful place";

  Review(this.imagePath, this.name, this.details, this.comment);

  @override 
  Widget build(BuildContext context) {
  
  final userName = Container(
    margin: EdgeInsets.only(
      left: 20.0,
    ),
    child: Text(
      name,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontFamily: 'Lato',
        fontSize: 17.0,
      ),
    ),
  );

  final star = Container(
      margin: EdgeInsets.only(
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Colors.yellow,
      ),
    );

  final userInfo = Container(
    margin: EdgeInsets.only(
      left:20.0,
    ),
    child: Row(
      children: <Widget>[
        Text(
          details,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 13.0,
            color: Color(0xFFa3a5a7),
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star,
          ],
        ),
      ],
    ),
  );

  final userComment = Container(
    margin: EdgeInsets.only(
      left:20.0,
    ),
    child: Text(
      comment,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontFamily: 'Lato',
        fontSize: 13.0,
        fontWeight: FontWeight.w900,
        color: Color(0xFFa3a5a7),
      ),
    ),
  );

  final userReview = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      userName,
      userInfo,
      userComment,
    ],
  );

  final photo = Container(
    margin: EdgeInsets.only(
      top: 20.0,
      left: 20.0,
    ),
    width: 80.0,
    height: 80.0,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(imagePath),
      ),
    ),
  );

  return Row(
    children: <Widget>[
        photo,
        userReview,
      ],
    );
  }
}