import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips/src/User/bloc/UserBloc.dart';
import 'package:platzi_trips/src/widgets/ButtonIcon.dart';

class UserToolBox extends StatelessWidget {
  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        ButtonIcon(
          icon: Icons.vpn_key,
          onPressed: () => print("bookmark button"),
          mini: true,
        ),
        ButtonIcon(
          icon: Icons.add,
          onPressed: () => print("plus button")
        ),
        ButtonIcon(
          icon: Icons.exit_to_app,
          onPressed: () => userBloc.signOut(),
          mini: true,
        )
      ],
    );
  }
}