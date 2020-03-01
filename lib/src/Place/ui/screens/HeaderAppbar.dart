import 'package:flutter/material.dart';
import 'package:platzi_trips/src/Place/ui/widgets/CardImageList.dart';
import 'package:platzi_trips/src/widgets/GradientBack.dart';

class HeaderAppbar extends StatelessWidget {
  String title;

  HeaderAppbar(this.title);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack(this.title, 250.0),
        CardImageList()
      ],
    );
  }
}