import 'package:dipe_project/widgets/colores-app.dart';
import 'package:flutter/material.dart';

Widget recomendaciones(context,ruta,imagen) => InkWell(
    onTap: () {
        Navigator.pushNamed(context, ruta);
      },
      splashColor: Colors.blueAccent.withOpacity(.3),
      child: AspectRatio(
      aspectRatio: 2.62 / 3,
      child: Container(
        margin: EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          color: color3,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(imagen),scale: 1.0
          ),
        ),
      ),
    ),
  );
