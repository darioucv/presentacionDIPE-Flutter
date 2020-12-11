
import 'package:flutter/material.dart';


class CategoryContainer extends StatefulWidget {

  final VoidCallback onPressed;
  final String category;
  final String urlImage;

  CategoryContainer({Key key, @required this.onPressed, @required this.category, @required this.urlImage});

  @override
  _CategoryContainerState createState() => _CategoryContainerState();
}

class _CategoryContainerState extends State<CategoryContainer> {
   
  @override
  Widget build(BuildContext context) {
    return CategoryContainerWidget(widget.onPressed, widget.category,widget.urlImage);
  }
}

Widget CategoryContainerWidget(VoidCallback onPressed,String category, String urlImage){
  
    return InkWell(
      onTap: onPressed,
      child: Card(
        
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          children: <Widget>[
            Text(category),
            Image.network(urlImage),
          ],
        ),
        
      ),
    );
}
