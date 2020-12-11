import 'package:dipe_project/widgets/colores-app.dart';
import 'package:dipe_project/widgets/mostrarElementos.dart';
import 'package:flutter/material.dart';

class Reflujo extends StatelessWidget {
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
                  height: 35,
                ),
                muestra(context, 'Reflujo Gastroesofagico', 'assets/reflujo.png', 'Se da cuando el ácido estomacal retrocede con frecuencia '+
                'al tubo que conecta la boca y el estómago (el esófago). Este retroceso de ácido puede irritar el revestimiento del esófago.' +
                          '\n' +'\n'+'Ocurre cuando el ácido estomacal o la bilis ascienden por el esófago, lo que irrita su revestimiento. Cuando el reflujo ácido y la acidez estomacal suceden más de dos veces por semana, pueden ser un indicio de reflujo gastroesofágico' +
                          '\n'+ '\n'+'Síntomas' +
                          '\n' +'•	Una sensación de ardor en el pecho (acidez estomacal), generalmente después de comer, que puede empeorar por la noche' +
                          '\n' +'•	Dolor en el pecho' +
                          '\n' +'•	Dificultad al tragar' +
                          '\n' +'•	Regurgitación de alimentos o líquidos agrios'+'\n' +
                          '•	Sensación de tener un nudo en la garganta','Recomendaciones', 'recom_reflujo'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}