import 'package:dipe_project/Diseases/ui/widgets/menuTratamientos.dart';
import 'package:dipe_project/widgets/colores-app.dart';
import 'package:flutter/material.dart';

class RecomHemorroides extends StatelessWidget {
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
                menuTratamiento(context, 'Come alimentos ricos en fibra. ', 'Come más frutas, verduras y cereales integrales. Hacerlo ablanda las heces y aumenta su volumen; '+
                'esto te ayudará a evitar el esfuerzo, que puede empeorar los síntomas de las hemorroides existentes. Agrega fibra a tu dieta progresivamente para evitar problemas de gases.', ''),
                menuTratamiento(context, 'Usa tratamientos tópicos.', 'Aplica cremas para hemorroides de venta libre o supositorios con hidrocortisona, o utiliza almohadillas con hamamelis o un agente anestésico.', ''),
                menuTratamiento(context, 'Sumérgete con frecuencia en una bañera con agua tibia o toma un baño de asiento', '•	Sumérgete con frecuencia en una bañera con agua tibia o toma un baño de asiento', ''),
                menuTratamiento(context, 'Toma analgésicos por vía oral.', 'Puedes usar paracetamol (Tylenol, otros), aspirinas o ibuprofeno (Advil, Motrin IB, otros) temporariamente para aliviar tu malestar.', '')
              ],
            ),
          ),
        ),
      ),
    );
  }
}