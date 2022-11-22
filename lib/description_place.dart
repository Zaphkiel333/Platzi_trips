import 'package:flutter/material.dart';
import 'Button_purple.dart';

class DescriptionPlace extends StatelessWidget{

  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  String dummyDescription =  "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\nAenean commodo ligula eget dolor. Aenean massa.\nCum sociis natoque penatibus et magnis dis parturient montes,\nnascetur ridiculus mus. Donec quam felis, ultricies nec,\npellentesque eu,\n\nPretium quis, sem. Nulia consequat massa quis enim.\nDonec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.\nIn enim justo, rhoncus ut, imperdiet a.";

  @override
  Widget build(BuildContext context) {

    final star_border =Container(
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFF2C611),
      ),
    );

    final star_half =Container(
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFF2C611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFF2C611),
      ),
    );

    final tittle_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [
            star,
            star,
            star,
            star,
            star_border
          ],
        )
      ],
    );

    final description = Container(
      margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 20.0
      ),
      child: Text(
         descriptionPlace,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575A)
        ),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        tittle_stars,
        description,
        ButtonPurple("Navigate")
      ],
    );
  }

}