import 'package:flutter/material.dart';

class Review extends StatelessWidget{

  String pathImage = "assets/img/photo.jpg";
  String name = "Yanna Guillen";
  String details = "1 review 5 photos";
  String comment = "There is an amazing place in Florida";

  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {

    final userComment = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          fontWeight: FontWeight.w900
        ),
      ),
    );

    final star_border =Container(
      margin: EdgeInsets.only(
          right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFF2C611),
      ),
    );

    final star_half =Container(
      margin: EdgeInsets.only(
          right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFF2C611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
          right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFF2C611),
      ),
    );

    final userInfo = Row(
      children: [
        Container(
          margin: EdgeInsets.only(
            left: 20.0,
          ),
          child: Text(
            details,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 13,
                fontFamily: "Lato",
                color: Color(0xFFA3A5A7)
            ),
          ),
        ),
        star,
        star,
        star,
        star_half,
        star_border
      ],
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17,
          fontFamily: "Lato"
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        userInfo,
        userComment
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
          image: AssetImage(pathImage)
        )
      ),
    );

    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );
  }
}