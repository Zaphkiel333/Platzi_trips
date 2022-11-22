import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350,
        child: ListView(
          padding: EdgeInsets.all(25),
          scrollDirection: Axis.horizontal,
          children: [
            CardImage("assets/img/playa.jpeg"),
            CardImage("assets/img/cerro.jpeg"),
            CardImage("assets/img/montana.jpg"),
            CardImage("assets/img/playa.jpeg"),
            CardImage("assets/img/montana.jpg"),
            CardImage("assets/img/cerro.jpeg"),
          ],
        ),
    );
  }

}