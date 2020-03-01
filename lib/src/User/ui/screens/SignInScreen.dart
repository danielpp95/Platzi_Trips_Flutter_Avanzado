import 'package:flutter/material.dart';
import 'package:platzi_trips/src/widgets/ButtonGreen.dart';
import 'package:platzi_trips/src/widgets/GradientBack.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignInScreen();
}

class _SignInScreen extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return signInGoogleUI();
  }

  Widget signInGoogleUI() {
    void OnPress(){

    }

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          GradientBack("", null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Welcome \n This is your Travel App",
                style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 37.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              ButtonGreen(
                text: "Logg In with G",
                height: 50,
                width: 300,
                onPressed: OnPress,
                borderRadius: 10.0
              )
            ],
          )
        ],
      ),
    );
  }
}