import 'package:flutter/material.dart';
import 'package:platzi_trips/src/Place/ui/widgets/Review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final title = Container(
      margin: EdgeInsets.only(
        left: 20.0,
        top: 20.0
      ),
      child: Text(
        "All reviwes",
        textAlign: TextAlign.left,
        style: TextStyle(
          color: Colors.black54,
          fontFamily: "Lato"
        ),
      )
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title,
        Review("Experiment_626", "assets/images/wallpaper.jpg", "some detail", "some coment"),
        Review("Experiment_626", "assets/images/wallpaper.jpg", "some detail", "some coment"),
        Review("Experiment_626", "assets/images/wallpaper.jpg", "some detail", "some coment"),
        Review("Experiment_626", "assets/images/wallpaper.jpg", "some detail", "some coment"),
      ],
    );
  }
}