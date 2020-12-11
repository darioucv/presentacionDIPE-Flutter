import 'package:flutter/material.dart';

Future showAlerta(context, ruta) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Cuidado', style: TextStyle(fontSize: 20,)),
          content: const Text(
              '¡OJO!: Ningún remedio casero puede sustituir un tratamiento médico, lo mejor es consultar a un especialista.',
              style: TextStyle(
                color: Colors.black,
                          fontWeight: FontWeight.bold
              ),),
          actions: [
            FlatButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pushNamed(ruta);
              },
            ),
          ],
        );
      },
    );
  }