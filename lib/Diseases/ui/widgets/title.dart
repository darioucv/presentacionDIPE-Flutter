import 'package:flutter/material.dart';

class TitleGeneric extends StatelessWidget {

final String titleGeneric;

TitleGeneric (this.titleGeneric);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Text(titleGeneric, 
        style: TextStyle(
          color: Colors.black87,
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
        textAlign: TextAlign.right
      ),
    );
  }
}