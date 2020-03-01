import 'package:flutter/material.dart';
import 'package:platzi_trips/src/User/model/User.dart';

class UserInfo extends StatelessWidget {
  User user;

  UserInfo(this.user);

  @override
  Widget build(BuildContext context) {

    final profileImage = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(this.user.photoUrl)
        ),
        border: Border.all(
          width: 2,
          color: Colors.white
        )
      ),
    );

    Widget fullName = Text(
      this.user.name,
      style: TextStyle(
        fontFamily: "Lato",
        color: Colors.white,
        fontSize: 16.0,
        fontWeight: FontWeight.w800
      ),
    );

    Widget email = Text(
      this.user.email,
      style: TextStyle(
        fontFamily: "Lato",
        color: Colors.white,
        fontSize: 16.0
      ),
    );

    var description = Container(
      margin: EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[fullName, email]
      ),
    );

    return Container(
      margin: EdgeInsets.only(
        top: 90
      ),
      height: 100,
      child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        profileImage,
        Spacer(),
        description,
        Spacer(flex: 12)
      ]),
    );
  }
}