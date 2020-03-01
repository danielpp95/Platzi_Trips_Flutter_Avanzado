import 'package:flutter/material.dart';
import 'package:platzi_trips/src/widgets/ButtonIcon.dart';

class UserToolBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        ButtonIcon(
          icon: Icons.bookmark,
          onPressed: () => print("bookmark button"),
          mini: true,
        ),
        ButtonIcon(
          icon: Icons.tv,
          onPressed: () => print("tv button"),
          mini: true,
        ),
        ButtonIcon(
          icon: Icons.add,
          onPressed: () => print("plus button"),
        ),
        ButtonIcon(
          icon: Icons.mail,
          onPressed: () => print("mail button"),
          mini: true,
        ),
        ButtonIcon(
          icon: Icons.person,
          onPressed: () => print("tv button"),
          mini: true,
        ),
      ],
    );
  }
  
}