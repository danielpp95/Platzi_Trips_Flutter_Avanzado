import 'package:flutter/material.dart';
import 'package:platzi_trips/src/User/ui/widgets/UserInfo.dart';
import 'package:platzi_trips/src/User/ui/widgets/UserToolbox.dart';
import 'package:platzi_trips/src/widgets/GradientBack.dart';

class ProfileTrips extends StatelessWidget {

  var ui = Column(
    children: <Widget>[
      UserInfo("assets/images/wallpaper.jpg", "Daniel Pereira", "danielpp95@gmail.com"),
      Spacer(flex: 1),
      UserToolBox(),
      Spacer(flex: 10),
    ],
  );

  @override
  Widget build(BuildContext context) => Container(
    child: Stack(
      children: <Widget>[
        GradientBack("Profile", 350),
        ui
      ],
    )
  );
}