import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  StarsType type;
  MaterialColor color;
  Star(this.type, this.color, );

  IconData icon;

  @override
  Widget build(BuildContext context) {
    switch(this.type){
      case StarsType.full:{icon = Icons.star;}
      break;

      case StarsType.border:{icon = Icons.star_border;}
      break;

      case StarsType.half:{icon = Icons.star_half;}
      break;

      default:{}
    }

    return Container(
      margin: EdgeInsets.only(
          top: 0.0,
          right: 3.0
      ),
      child: Icon(
          icon,
          color: color
      ),
    );
  }
}

enum StarsType {
  full,
  half,
  border
}