import 'package:dipe_project/widgets/colores-app.dart';
import 'package:flutter/material.dart';

class SeleccionSintomas extends StatefulWidget {
  @override
  _SeleccionSintomasState createState() => _SeleccionSintomasState();
}

class _SeleccionSintomasState extends State<SeleccionSintomas> {
  bool check = false;
  bool check2 = false;
  bool check3 = false;
  bool check4 = false;
  bool check5 = false;
  bool check6 = false;
  bool check7 = false;
  bool check8 = false;
  bool check9 = false;
  bool check10 = false;
  bool check11 = false;
  bool check12 = false;
  bool check13 = false;
  bool check14 = false;
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
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  child: Text('Selecciona ' + '\n' + 'tus sintomas',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 27,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.lightBlue.withOpacity(.4),
                      borderRadius: BorderRadius.circular(20)
                    ),
                  margin: EdgeInsets.only(right: 20, left: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            activeColor: Colors.amber,
                            value: check,
                            onChanged: (a) {
                              setState(() {
                                check = a;
                              });
                            },
                          ),
                          Text(
                            'Tos',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            activeColor: Colors.amber,
                            value: check2,
                            onChanged: (a) {
                              setState(() {
                                check2 = a;
                              });
                            },
                          ),
                          Text(
                            'Dolor de garganta',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            activeColor: Colors.amber,
                            value: check3,
                            onChanged: (a) {
                              setState(() {
                                check3 = a;
                              });
                            },
                          ),
                          Text(
                            'Dolor muscular',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            activeColor: Colors.amber,
                            value: check4,
                            onChanged: (a) {
                              setState(() {
                                check4 = a;
                              });
                            },
                          ),
                          Text(
                            'Cansancio',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            activeColor: Colors.amber,
                            value: check5,
                            onChanged: (a) {
                              setState(() {
                                check5 = a;
                              });
                            },
                          ),
                          Text(
                            'Dolor de espalda',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            activeColor: Colors.amber,
                            value: check6,
                            onChanged: (a) {
                              setState(() {
                                check6 = a;
                              });
                            },
                          ),
                          Text(
                            'Dolor en el hombro derecho',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            activeColor: Colors.amber,
                            value: check7,
                            onChanged: (a) {
                              setState(() {
                                check7 = a;
                              });
                            },
                          ),
                          Text(
                            'Náuseas o vomitos',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            activeColor: Colors.amber,
                            value: check8,
                            onChanged: (a) {
                              setState(() {
                                check8 = a;
                              });
                            },
                          ),
                          Text(
                            'Picazón o irritación ' + '\n' + ' en la zona anal',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            activeColor: Colors.amber,
                            value: check9,
                            onChanged: (a) {
                              setState(() {
                                check9 = a;
                              });
                            },
                          ),
                          Text(
                            'Un bulto duro cerca del ano',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            activeColor: Colors.amber,
                            value: check10,
                            onChanged: (a) {
                              setState(() {
                                check10 = a;
                              });
                            },
                          ),
                          Text(
                            'Dificultad al tragar',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            activeColor: Colors.amber,
                            value: check11,
                            onChanged: (a) {
                              setState(() {
                                check11 = a;
                              });
                            },
                          ),
                          Text(
                            'Congestión nasal',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            activeColor: Colors.amber,
                            value: check12,
                            onChanged: (a) {
                              setState(() {
                                check12 = a;
                              });
                            },
                          ),
                          Text(
                            'Dolor de cabeza',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            activeColor: Colors.amber,
                            value: check13,
                            onChanged: (a) {
                              setState(() {
                                check13 = a;
                              });
                            },
                          ),
                          Text(
                            'Dolor repentino en el abdomen',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            activeColor: Colors.amber,
                            value: check14,
                            onChanged: (a) {
                              setState(() {
                                check14 = a;
                              });
                            },
                          ),
                          Text(
                            'Sibilancias',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
