import 'package:dipe_project/widgets/colores-app.dart';
import 'package:dipe_project/widgets/mostrarElementos.dart';
import 'package:flutter/material.dart';

class EnfRespiratorias extends StatelessWidget {
  @override
  Widget build(BuildContext context,) {
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
                  child: Text("Enfermedades Respiratorias", style: TextStyle(
                            color: Colors.black87,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),textAlign: TextAlign.right),
                ),
                muestra(context, 'Gripe', 'assets/gripe.jpg', 'La gripe, también llamada influenza,' +
                          '\n' + 'es una infección respiratoria causada por virus.','Más información', 'gripe'),
                muestra(context, 'Asma', 'assets/asma2.png', 'Es una enfermedad crónica que provoca que las vías respiratorias de los pulmones se hinchen y se estrechen. Esto hace que se...','Más información', '/'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}