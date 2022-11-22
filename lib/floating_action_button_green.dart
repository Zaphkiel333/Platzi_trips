import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {

  bool isFavorite = false;

  void onPressedFav(){
    setState(() {
      isFavorite = !this.isFavorite;
    });
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text(
                 this.isFavorite ? "Agregaste a tus favoritos" : "Eliminaste de tus favoritos"
              )
          )
      );
    }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        this.isFavorite ? Icons.favorite : Icons.favorite_border
      ),
    );
  }
}
