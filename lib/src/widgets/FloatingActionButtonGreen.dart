import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  bool saved = false;

  void onPressedFav(){
    this.setState(() {
      saved = !saved;
    });
    Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text("Added to fav's ♥"),
        )
    );
  }

  @override
  Widget build(BuildContext context) => FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      child: Icon(
        this.saved ? Icons.favorite : Icons.favorite_border
      ),
      onPressed: this.onPressedFav,
    );

}