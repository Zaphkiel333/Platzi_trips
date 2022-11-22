import 'package:flutter/material.dart';
import 'package:platzi_gram/review_list.dart';

import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget{

  String dummyDescription =  "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\nAenean commodo ligula eget dolor. Aenean massa.\nCum sociis natoque penatibus et magnis dis parturient montes,\nnascetur ridiculus mus. Donec quam felis, ultricies nec,\npellentesque eu,\n\nPretium quis, sem. Nulia consequat massa quis enim.\nDonec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.\nIn enim justo, rhoncus ut, imperdiet a.";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        ListView(
          children: [
            DescriptionPlace("Bahamas", 4, dummyDescription),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }
  
}