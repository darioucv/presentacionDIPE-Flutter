import 'package:dipe_project/widgets/colores-app.dart';
import 'package:dipe_project/widgets/mostrarElementos.dart';
import 'package:flutter/material.dart';

class MenuPrimerosAuxilios extends StatelessWidget {
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
                  child: Text("Primeros Auxilios", style: TextStyle(
                            color: Colors.black87,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),textAlign: TextAlign.right),
                ),
                muestra(context, '¿Qué debe contener un botiquín?', 'assets/primerosAuxilios.jpg', 'Un botiquín no es nada más que un estuche donde se guardan los utensilios y ...', 'Ver más', 'botiquin'),
                muestra(context, 'Accidentes', 'assets/accidente.png', 'En caso de accidente grave actuar secuencialmente: PROTEGER: hemos de asegurarnos de ...', 'Ver más', 'ruta'),
                muestra(context, 'Hemorragias', 'assets/hemorragias.gif', 'No te dejes llevar por el pánico. Actúa con calma pero con decisión. En las heridas incisas, cubrirlas con una...', 'Ver más', 'ruta'),
                muestra(context, 'Heridas', 'assets/accidente.png', 'informacion', 'Ver más', 'ruta'),
                muestra(context, 'Atragantamiento', 'assets/accidente.png', 'informacion', 'Ver más', 'ruta'),
                muestra(context, 'Fracturas', 'assets/accidente.png', 'informacion', 'Ver más', 'ruta'),
                muestra(context, 'Hipoglucemia', 'assets/accidente.png', 'informacion', 'Ver más', 'ruta'),
                muestra(context, 'Incendios', 'assets/accidente.png', 'informacion', 'Ver más', 'ruta'),
                muestra(context, 'Intoxicación', 'assets/accidente.png', 'informacion', 'Ver más', 'ruta'),
                muestra(context, 'Quemaduras', 'assets/accidente.png', 'informacion', 'Ver más', 'ruta'),
                muestra(context, 'RCP', 'assets/accidente.png', 'informacion', 'Ver más', 'ruta'),
              ] 
            ),
          ),
        ),
      ),
    );
  }
}