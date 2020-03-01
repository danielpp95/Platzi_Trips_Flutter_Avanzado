import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips/src/Place/ui/screens/HomeTrips.dart';
import 'package:platzi_trips/src/Search/ui/screens/SearchTrips.dart';
import 'package:platzi_trips/src/User/bloc/UserBloc.dart';
import 'package:platzi_trips/src/User/ui/screens/ProfileTrips.dart';

class PlatziTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PlatziTrips();
}

class _PlatziTrips extends State<PlatziTrips> {
  int indexTap = 0;

  void onTapTapped(int index){
    this.setState(() {
      this.indexTap = index;
    });
  }

  BlocProvider<UserBloc> blocProvider(Widget body) {
    return BlocProvider(
        bloc: UserBloc(),
        child: body
      );
    }

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgetsChildren = [
      HomeTrips(),
      SearchTrips(),
      ProfileTrips()
    ];

    return Scaffold(
      body: this.blocProvider(widgetsChildren[this.indexTap]),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple, // icons color
        ),
        child: BottomNavigationBar(
          onTap: this.onTapTapped,
          currentIndex: this.indexTap,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text("")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text("")
            )
          ]
        ),
      ),
    );
  }
}