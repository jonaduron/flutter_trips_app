import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() { 
    return _FavoriteButtonState();
  }
}

class _FavoriteButtonState extends State<FavoriteButton> {
  
  void onPressedFav() {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text("Favorating"),
      )
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        Icons.favorite_border
      ),
    );
  }
}