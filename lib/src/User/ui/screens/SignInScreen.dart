import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips/src/PlatziTrips.dart';
import 'package:platzi_trips/src/User/bloc/UserBloc.dart';
import 'package:platzi_trips/src/User/model/User.dart';
import 'package:platzi_trips/src/widgets/ButtonGreen.dart';
import 'package:platzi_trips/src/widgets/GradientBack.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignInScreen();
}

class _SignInScreen extends State<SignInScreen> {
  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);

    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
      return StreamBuilder(
        stream: userBloc.authStatus,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData || snapshot.hasError) {
            return signInGoogleUI();
          } else {
            return PlatziTrips();
          }
        },
      );
    }

  Widget signInGoogleUI() {
    void onPress(){
      userBloc.signIn()
        .then((FirebaseUser user) {
          userBloc.updateUserData(User(
            uid: user.uid,
            email: user.email,
            name: user.displayName,
            photoUrl: user.photoUrl
          ));
        });
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
                onPressed: onPress,
                borderRadius: 10.0
              )
            ],
          )
        ],
      ),
    );
  }
}