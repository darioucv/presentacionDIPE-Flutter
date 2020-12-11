import 'package:flutter/material.dart';

  Widget menuLista(context, ruta, imagenUrl) {
    return Container(
      child: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, ruta);
          },
          icon: Image.network(imagenUrl)),
    );
  }
