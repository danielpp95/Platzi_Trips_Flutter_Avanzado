import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:platzi_trips/src/PlatziTrips.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.transparent,
          statusBarColor: Colors.transparent
      ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: PlatziTrips(),
    );
  }
  
}

