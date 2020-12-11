import 'package:dipe_project/widgets/colores-app.dart';
import 'package:dipe_project/widgets/mostrarElementos.dart';
import 'package:flutter/material.dart';

class Gripe extends StatelessWidget {
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
                muestra(context, 'Gripe', 'assets/gripe.jpg', 'La gripe es una infección respiratoria causada por el virus de la influenza que se transmite de persona a persona cuando alguien con gripe tose, estornuda o habla, expulsa pequeñas gotas.' +
                          '\n' +'Estas gotitas pueden caer en la boca o en la nariz de las personas que están cerca.' +
                          '\n' +'Síntomas' +
                          '\n' +'- Fiebre o sensación de fiebre y escalofríos' +
                          '\n' +'- Tos' +
                          '\n' +'- Dolor de garganta' +
                          '\n' +'- Goteo o congestión nasal' +'\n' +'- Dolores musculares o del cuerpo' +'\n' +
                          '- Dolor de cabeza' +'\n' +
                          '- Fatiga','Tratamiento', 'tratamiento_gripe'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}