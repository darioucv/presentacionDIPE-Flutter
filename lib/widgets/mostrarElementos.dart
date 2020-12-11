import 'package:flutter/material.dart';

import 'colores-app.dart';

  Widget muestra(context, titulo,imagen, informacion,ir, ruta) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: color3.withOpacity(.4),
      ),
      padding: EdgeInsets.all(30),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(titulo,
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 27,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                informacion, style: TextStyle(
                      fontSize: 20, color: Colors.black87, fontWeight: FontWeight.bold
                    ),
              ),
              Container(
                width: 250,
                height: 250,
                child: Image(
                  image: AssetImage(imagen),
                  fit: BoxFit.fitWidth,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, ruta);
                },
                splashColor: Colors.blueAccent.withOpacity(.3),
                child: Row( children: [
                  Text(ir, style: TextStyle(
                      fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold
                    ),
                  ),
                  Icon(
                    Icons.navigate_next
                  ),
                ],
                  
                )
              ),
            ],
          ),
      ),
    );
  }