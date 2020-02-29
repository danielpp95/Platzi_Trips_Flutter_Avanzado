import 'package:flutter/material.dart';
import 'package:platzi_trips/src/widgets/ButtonPurple.dart';
import 'package:platzi_trips/src/widgets/Star.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {


    final description = Container(
      margin: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        top: 10.0
      ),
      child: Text(
        descriptionPlace,
        style: TextStyle(
          fontSize: 16,
          color: Color(0xFF56575a),
          fontFamily: "Lato"
        ),
      ),
    );

    final stars = Container(
      margin: EdgeInsets.only(
        top: 323.0
      ),
      child: Row(
        children: <Widget>[
          Star(StarsType.full, Colors.amber),
          Star(StarsType.full, Colors.amber),
          Star(StarsType.full, Colors.amber),
          Star(StarsType.half, Colors.amber),
          Star(StarsType.border, Colors.amber)
        ],
      ),
    );

    final title=  Container(
      margin: EdgeInsets.only(
        top: 320.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        this.namePlace,
        style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w900,
          fontFamily: "Lato"
        ),
        textAlign: TextAlign.left,
      ),
    );

    final fullDescription = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
          children: <Widget>[title, stars]
          ),
          description,
          ButtonPurple("Navigate")
        ],
      );

    return fullDescription;
  }
}