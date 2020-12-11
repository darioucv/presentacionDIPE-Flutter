import 'package:dipe_project/Diseases/ui/widgets/menuTratamientos.dart';
import 'package:dipe_project/widgets/colores-app.dart';
import 'package:flutter/material.dart';
class TratamientosGripe extends StatelessWidget {
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
                menuTratamiento(context, 'Te de Jengibre', 'El jengibre tiene propiedades analgésicas y antibacterianas, por lo que reduce los síntomas de la gripe.'+'\n'
                          +'- Agrega una cucharada de jengibre fresco picado a una taza de agua hirviendo, deja reposar por 10 min y endulza con miel.','assets/tejengibre.png'),
                menuTratamiento(context, 'Te de miel y limón','Ayuda a descongestionar la nariz, lúbrica la garganta y mejora el sistema inmunológico.'+'\n'
                          +'Mezcla el jugo de 1 limón, 2 cucharadas de miel y 1 taza de agua hirviendo' ,'assets/telimon.png')
              ],
            ),
          ),
        ),
      ),
    );
  }
}