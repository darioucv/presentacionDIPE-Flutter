import 'package:dipe_project/widgets/colores-app.dart';
import 'package:dipe_project/widgets/mostrarElementos.dart';
import 'package:flutter/material.dart';

class Calculos extends StatelessWidget {
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
                muestra(context, 'Cálculos Biliares', 'assets/calculos.png', '\n'+'Son depósitos endurecidos de fluido digestivo que se pueden formar en la vesícula biliar. La vesícula es un órgano pequeño, con forma de pera, ubicado en la zona derecha del abdomen, justo debajo del hígado. '+
                ' Los cálculos biliares tienen tamaños que oscilan entre pequeños, como granos de arena, hasta grandes,'+ 
                'como pelotas de golf.'+
                '\n'+ '\n'+'Causada por contener demasiado colesterol, exceso de bilirrubina o no se vacía de forma correcta' +
                          '\n' +'\n'+'Ocurre cuando el ácido estomacal o la bilis ascienden por el esófago, lo que irrita su revestimiento. Cuando el reflujo ácido y la acidez estomacal suceden más de dos veces por semana, pueden ser un indicio de reflujo gastroesofágico' +
                          '\n'+ '\n'+'Síntomas' +
                          '\n' +'•	Dolor repentino y que se intensifica rápidamente en la parte derecha superior del abdomen' +
                          '\n' +'•	Dolor repentino y que se intensifica rápidamente en la parte central del abdomen, justo debajo del esternón' +
                          '\n' +'•	Dolor de espalda justo entre las escápulas' +
                          '\n' +'•	Dolor en el hombro derecho' +'\n' +'•	Náuseas o vómitos','Recomendaciones', 'recom_calculos'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}