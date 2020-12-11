import 'package:dipe_project/widgets/colores-app.dart';
import 'package:dipe_project/widgets/mostrarElementos.dart';
import 'package:flutter/material.dart';

class Hemorroides extends StatelessWidget {
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
                muestra(context, 'Hemorroides', 'assets/hemorroides.png', 'También llamadas almorranas, son venas hinchadas en el ano y la parte inferior del recto, similares a las venas varicosas. Las hemorroides pueden desarrollarse'+
                ' dentro del recto (hemorroides internas) o debajo de la piel alrededor del ano (hemorroides externas).'+'\n'+
                '\n'+
                'Causas'+ '\n'+ '•	Esfuerzo al evacuar los intestinos'+ '\n'+ '•	Sentarse durante largos períodos en el inodoro'+ '\n'+ 
                '•	Tener diarrea crónica o estreñimiento'+ '\n'+ '•	Ser obeso'+ '\n'+ '•	Estar embarazada'+ 
                '\n'+ '•	Tener relaciones sexuales anales'+ '\n'+ '•	Seguir una dieta con un bajo contenido de fibras'+ '\n'+ 
                '•	Levantar cosas pesadas con regularidad'+  '\n'+'\n'+'Síntomas'+ '\n'+ 'Los signos y síntomas de las hemorroides generalmente dependen del tipo de hemorroide:'
                + '\n'+  '\n'+'Hemorroides externas:'+ '\n'+ '•	Picazón o irritación en la zona anal ' '\n'+
                ' •	Dolor o molestia ' '\n'+' •	Hinchazón alrededor del ano' +'\n'+'Hemorroides internas'+'\n'+'•	Sangrado indoloro durante las deposiciones. '
                +'\n'+'•	Una hemorroide que empuja a través de la abertura anal, lo que provoca dolor e irritación.'
                +'\n'+''+'\n'+'Hemorroides trombosadas'+'\n'+'•	Dolor intenso'+'\n'+'•	Hinchazón'+'\n'+'•	Inflamación'+'\n'+'•	Un bulto duro cerca del ano'+'\n'+'',
                 'Recomendaciones', 'recom_hemorroides')
              ],
            ),
          ),
        ),
      ),
    );
  }
}