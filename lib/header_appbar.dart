import 'package:flutter/material.dart';
import 'package:trips_app/back_gradient.dart';
import 'package:trips_app/card_image_list.dart';

class HeaderAppBar extends StatelessWidget {

  @override 
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        BackGradient("Popular"),
        CardImageList()
      ],
    );
  }
}