import 'package:dipe_project/Diseases/repository/categoryDB.dart';
import 'package:flutter/material.dart';
class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    /* return CategoryDB(); */
    return Scaffold(
      body: Container(
        child: Row(
          children:<Widget>[

            ListView(
              children: <Widget>[
                Text("si se puede"),
                Text("si se puede"),
                Text("si se puede"),
              ],
            ),
            ListView(
              children: <Widget>[
                Text("si se puede"),
                Text("si se puede"),
                Text("si se puede"),
              ],
            ),
            ListView(
              children: <Widget>[
                Text("si se puede"),
                Text("si se puede"),
                Text("si se puede"),
              ],
            ),

          ],
        ),
      ),
    );
  }
}