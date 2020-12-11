import 'package:dipe_project/widgets/colores-app.dart';
import 'package:dipe_project/widgets/mostrarElementos.dart';
import 'package:flutter/material.dart';

class EnfDigestivas extends StatelessWidget {
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
                  child: Text("Enfermedades Digestivas", style: TextStyle(
                            color: Colors.black87,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),textAlign: TextAlign.left),
                ),
                muestra(context, 'Reflujo Gastroesofagico', 'assets/reflujo.png', 'Se da cuando el ácido estomacal retrocede con frecuencia al tubo que conecta la boca y '+
                'el estómago (el esófago). Este retroceso ...','Más información', 'reflujo'),
                muestra(context, 'Cálculos Biliares', 'assets/calculos.png', 'Son depósitos endurecidos de fluido'+
                'digestivo que se pueden formar en la vesícula biliar. La vesícula es un órgano pequeño, con forma de pera, ubicado ...','Más información', 'calculos'),
                muestra(context, 'Hemorroides', 'assets/hemorroides.png', 'También llamadas almorranas, son venas hinchadas en el ano y la parte inferior del recto, '+
                'similares a las venas varicosas. Las hemorroides pueden desarrollarse... ', 'Más información', 'hemorroides')
              ],
            ),
          ),
        ),
      ),
    );
  }
}