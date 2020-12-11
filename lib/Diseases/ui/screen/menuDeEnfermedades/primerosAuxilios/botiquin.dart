import 'package:dipe_project/Diseases/ui/widgets/menuTratamientos.dart';
import 'package:dipe_project/widgets/colores-app.dart';
import 'package:flutter/material.dart';

class Botiquin extends StatelessWidget {
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
                  height: 35,
                ),
                menuTratamiento(context, '¿Qué debe contener un botiquín?', 
                'Un botiquín no es nada más que un estuche donde se guardan los utensilios y el material que debería encontrarse en cualquier botiquín es:'+'\n'+
                '- Guantes desechables'+'\n'+
                '- Pinzas'+'\n'+
                '- Tijeras de punta roma'+'\n'+
                '- Termómetro'+'\n'+
                '- Linterna'+'\n'+
                '- Suero fisiológico'+'\n'+
                '- Povidona yodada'+'\n'+
                '- Clorhexidina'+'\n'+
                '- Agua oxigenada y alcohol'+'\n'+
                '- Gasas'+'\n'+
                '- Vendas'+'\n'+
                '- Apósitos adhesivos y tiritas'+'\n'+
                '- Esparadrapo hipoalergénico'+'\n'+
                '- Crema antibiótica', 
                'assets/primerosAuxilios.jpg'),
              ]
            ),
          ),
        ),
      ),
    );
  }
}