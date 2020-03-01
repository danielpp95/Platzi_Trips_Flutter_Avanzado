import 'package:flutter/cupertino.dart';
import 'package:platzi_trips/src/Place/model/Place.dart';

class User {
  final String uid;
  final String name;
  final String email;
  final String photoUrl;
  final List<Place> myPlaces;
  final List<Place> myFavoritesPlaces;

  User({
    Key key,
    @required this.uid,
    @required this.name,
    @required this.email,
    @required this.photoUrl,
    this.myPlaces,
     this.myFavoritesPlaces
  });
}