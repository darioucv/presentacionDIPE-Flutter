import 'package:flutter/material.dart';


class DataError extends StatefulWidget {
  final VoidCallback onPressed;

  DataError({Key key, @required this.onPressed});
  @override
  _DataErrorState createState() => _DataErrorState();
}

class _DataErrorState extends State<DataError> {
  @override
  Widget build(BuildContext context) {
    return dataError(widget.onPressed);
  }
}

Widget dataError(VoidCallback onPressed){
    return SafeArea(
      child: Container(
        color: Colors.red[900],
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('ERROR',style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold)),
              subtitle: Text(
                'La url no se encuentra disponible',
                style:TextStyle(color: Colors.white)
              ),
            ),
            RaisedButton(
              child: Text(
                'Reintentar',
                style : TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )
              ),
              color: Colors.green,
              onPressed: onPressed,
            ),
          ],
        ),
      ),
    );
  } 
