import 'package:dipe_project/Diseases/ui/widgets/menuTratamientos.dart';
import 'package:dipe_project/widgets/colores-app.dart';
import 'package:flutter/material.dart';

class RecomReflujo extends StatelessWidget {
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
                menuTratamiento(context, 'Consejos', '•	Evitar acostarse después de las comidas, por lo menos hasta que hayan pasado unas 2 horas desde la ingesta.'+'\n'
                          +'•	Elevar la cabecera de la cama, unos 10-15 cm. mediante la colocación de tacos de madera en las patas del cabezal de la cama.'+'\n'+
                          '•	No usar prendas ajustadas.'+'\n'+'•	No realizar comidas muy abundantes.'+'\n'+'•	Controlar el sobrepeso.','assets/reflujo.png'),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}