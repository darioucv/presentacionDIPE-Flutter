import 'package:dipe_project/Diseases/ui/widgets/menuTratamientos.dart';
import 'package:dipe_project/widgets/colores-app.dart';
import 'package:flutter/material.dart';

class RecomCalculos extends StatelessWidget {
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
                menuTratamiento(context, '•	Cirugía para extirpar la vesícula (colecistectomía)',' El médico puede recomendarte una cirugía para extirpar la vesícula biliar, debido a que los cálculos biliares reaparecen con frecuencia. Una vez que se extirpa la vesícula, la bilis fluye directamente desde el hígado hasta el intestino delgado, en lugar de permanecer almacenada en la vesícula.', 'assets/calculos.png'),
                menuTratamiento(context, '•	Medicamentos para disolver los cálculos biliares', 'Los medicamentos que tomas por vía oral pueden ayudar a disolver los cálculos biliares. Sin embargo, disolver los cálculos biliares de este modo puede llevar meses o años de tratamiento, y es probable que los cálculos biliares se vuelvan a formar si se interrumpe el tratamiento', 'imagen')
              ]
            ),
          ),
        ),
      ),
    );
  }
}