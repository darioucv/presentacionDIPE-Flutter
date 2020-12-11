
import 'package:dipe_project/Diseases/ui/screen/CentrosCercanos.dart';
import 'package:dipe_project/widgets/colores-app.dart';
import 'package:flutter/material.dart';

Widget menu(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: color4,
        borderRadius: BorderRadius.circular(20),
      ),
      width: 360,
      height: 105,
      child: GridView.count(
        crossAxisCount: 4,
        children: [
          Card(
            elevation: 0,
            color: color4,
            margin: EdgeInsets.all(4.0),
            child: InkWell(
              onTap: () =>Navigator.pushNamed(context, "categoria_enfermedades"), 
              splashColor: Colors.blueAccent.withOpacity(.3),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.description,
                      size: 30.0,
                    ),
                    Text(
                      'Enfermedades',
                      style: TextStyle(
                          fontSize: 11.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 0,
            color: color4,
            margin: EdgeInsets.all(4.0),
            child: InkWell(
              onTap: () => Navigator.pushNamed(context, 'sintomas'),
              splashColor: Colors.blueAccent.withOpacity(.3),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.note_add,
                      size: 30.0,
                    ),
                    Text(
                      'Añadir' + '\n' + 'Sintomas',
                      style: TextStyle(
                          fontSize: 11.0, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 0,
            color: color4,
            margin: EdgeInsets.all(4.0),
            child: InkWell(
              onTap: () =>Navigator.pushNamed(context, "menu_primeros_auxilios"),
              splashColor: Colors.blueAccent.withOpacity(.3),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.medical_services),
                    Text(
                      'Primeros' + '\n' + 'Auxilios',
                      style: TextStyle(
                          fontSize: 11.0, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 0,
            color: color4,
            margin: EdgeInsets.all(4.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CentrosCercanos()),
                );
              },
              splashColor: Colors.blueAccent.withOpacity(.3),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.map,
                      size: 30.0,
                    ),
                    Text(
                      'Centros' + '\n' + 'Cercanos',
                      style: TextStyle(
                          fontSize: 11.0, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
    
  }
  