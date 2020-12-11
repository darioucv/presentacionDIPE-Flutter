import 'package:dipe_project/widgets/colores-app.dart';
import 'package:dipe_project/widgets/mostrarElementos.dart';
import 'package:flutter/material.dart';

class EnfCardiovasculares extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  child: Text("Enfermedades Cardiovasculares", style: TextStyle(
                            color: Colors.black87,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),textAlign: TextAlign.right),
                ),
                muestra(context, '', 'assets/given11.jpg', '...','Más información', 'tratamiento_gripe'),
                muestra(context, '', 'assets/given11.jpg', '...','Más información', '/'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}