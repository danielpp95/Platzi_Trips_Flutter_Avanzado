import 'package:flutter/material.dart';
import 'package:platzi_trips/src/User/model/User.dart';

class Place {
  String id;
  final String name;
  final String description;
  String urlImage;
  int likes;
  User userOwner;

  Place({
    Key key,
    @required this.name,
    @required this.description,
    @required this.userOwner,
    this.urlImage,
    this.likes,
  });
}