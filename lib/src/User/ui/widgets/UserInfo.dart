import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  String pathImage;
  String userFullName;
  String email;

  UserInfo(this.pathImage, this.userFullName, this.email);

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
          image: AssetImage(pathImage)
        ),
        border: Border.all(
          width: 2,
          color: Colors.white
        )
      ),
    );

    Widget fullName = Text(
      this.userFullName,
      style: TextStyle(
        fontFamily: "Lato",
        color: Colors.white,
        fontSize: 16.0,
        fontWeight: FontWeight.w800
      ),
    );

    Widget email = Text(
      this.email,
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