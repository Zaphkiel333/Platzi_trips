import 'package:flutter/material.dart';
import 'package:platzi_gram/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children:[
        new Review("assets/img/photo.png", "Yanna Guillen", "1 review 5 photos", "There is an amazing place in Florida"),
        new Review("assets/img/photo.png", "Rafael Hernández", "1 review 5 photos", "There is an amazing place in Florida"),
        new Review("assets/img/photo.png", "Lourdes Guillen", "1 review 5 photos", "There is an amazing place in Florida"),
        new Review("assets/img/photo.png", "Horacio Hernández", "1 review 5 photos", "There is an amazing place in Florida"),
        new Review("assets/img/photo.png", "Yanna Taylor", "1 review 5 photos", "There is an amazing place in Florida"),
        new Review("assets/img/photo.png", "Rafael Solórzano", "1 review 5 photos", "There is an amazing place in Florida"),
      ]
    );
  }

}