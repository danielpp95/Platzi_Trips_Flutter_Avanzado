import 'package:flutter/material.dart';

class ButtonIcon extends StatefulWidget {

  Color backgroundColor;
  MaterialColor color;
  final VoidCallback onPressed;
  final IconData icon;
  bool mini;

  ButtonIcon({
    Key key,
    @required this.onPressed,
    @required this.icon,
    this.backgroundColor = Colors.white,
    this.color = Colors.indigo,
    this.mini = false
  });
  
  @override
  State<StatefulWidget> createState() {
    return !this.mini ? _ButtonIcon() : _ButtonIconMini();
  }
}

class _ButtonIcon extends State<ButtonIcon> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: widget.onPressed,
      child: Icon(widget.icon),
      backgroundColor: widget.backgroundColor,
      foregroundColor: widget.color
    );
  }
}

class _ButtonIconMini extends State<ButtonIcon> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: widget.onPressed,
      child: Icon(widget.icon),
      backgroundColor: widget.backgroundColor,
      foregroundColor: widget.color,
      mini: true,
    );
  }
}