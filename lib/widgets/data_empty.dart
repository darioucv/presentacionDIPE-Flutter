import 'package:flutter/material.dart';

class DataEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return dataEmpty();
  }
}

Widget dataEmpty(){
    return SafeArea(
      child: Container(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('Lista Vacia'),
              subtitle: Text('La api no tiene contenido'),
            )
          ],
        ),
      ),
    );
  }