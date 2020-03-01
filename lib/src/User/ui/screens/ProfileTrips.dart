import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips/src/User/bloc/UserBloc.dart';
import 'package:platzi_trips/src/User/model/User.dart';
import 'package:platzi_trips/src/User/ui/widgets/UserInfo.dart';
import 'package:platzi_trips/src/User/ui/widgets/UserToolbox.dart';
import 'package:platzi_trips/src/widgets/GradientBack.dart';

class ProfileTrips extends StatelessWidget {
  UserBloc userBloc;

  User user;

  errorMessage (String message) {
      return Text(
        message,
        style: TextStyle(
          color: Colors.red
        ),
      );
  }

  Widget showProfileData(AsyncSnapshot snapshot) {
    if (!snapshot.hasData || snapshot.hasError) {
      print("No logged");
      return Container(
        child: Column(children: <Widget>[
          CircularProgressIndicator(),
          errorMessage("Error en logging")
        ],)
      );
    }

    user = User(
      name: snapshot.data.displayName,
      email: snapshot.data.email,
      photoUrl: snapshot.data.photoUrl
    );

    return Container(
      child: Stack(
        children: <Widget>[
          GradientBack("Profile", 350),
          Column(
          children: <Widget>[
            UserInfo(user),
            Spacer(flex: 1),
            UserToolBox(),
            Spacer(flex: 10),
          ],
        )
        ],
      )
    );
  }
  
  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);

    errorMessage (String message) {
      return Text(
        message,
        style: TextStyle(
          color: Colors.red
        ),
      );
    }

    return StreamBuilder(
      stream: userBloc.streamFirebase,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
          print(snapshot);
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[CircularProgressIndicator(), errorMessage("waiting...")]
                )
            );
            break;
          case ConnectionState.none:
            return Column(children: <Widget>[CircularProgressIndicator(), errorMessage("none")],);
            break;
          case ConnectionState.active:
            return showProfileData(snapshot);
            break;
          case ConnectionState.done:
            return showProfileData(snapshot);
            break;
          default: return null;
        }
      }
    );
  }
}