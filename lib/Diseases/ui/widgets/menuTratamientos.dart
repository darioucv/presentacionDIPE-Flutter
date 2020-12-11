import 'package:dipe_project/widgets/colores-app.dart';
import 'package:flutter/material.dart';

  Widget menuTratamiento(context, titulo, informacion,imagen) {
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
              SizedBox(
                  height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.all(15.0),
                    child: Text(titulo,
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center
                      ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 2,right: 2),
                    width:500,
                    height: 450,
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: color5.withOpacity(.3),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: ListView(
                      children: [
                        Text(
                          informacion,
                          style: TextStyle(
                            fontSize: 20, 
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Image.asset(imagen, scale: 1.0,),
                      ],
                    ),
                  ),
            ],
          ),
      ),
    );
  }