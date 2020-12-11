import 'package:flutter/material.dart';
class ButtonGenericDisease extends StatefulWidget {

    final VoidCallback onPressed;
    final String title;

  const ButtonGenericDisease({Key key, this.onPressed, this.title});
  @override
  _ButtonGenericDiseaseState createState() => _ButtonGenericDiseaseState();
}

class _ButtonGenericDiseaseState extends State<ButtonGenericDisease> {
  @override
  Widget build(BuildContext context ) {
    return RaisedButton(
      disabledColor: Colors.amber,
      child: Text(widget.title),
      splashColor: Colors.amber,
      color: Colors.blueAccent,
      onPressed: widget.onPressed
    );
  }
}