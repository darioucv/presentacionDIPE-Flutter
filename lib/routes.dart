import 'package:dipe_project/Diseases/repository/categoryDB.dart';
import 'package:dipe_project/Diseases/ui/screen/categoriaEnfermedades.dart';
import 'package:dipe_project/Diseases/ui/screen/menuDeEnfermedades/primerosAuxilios/botiquin.dart';
import 'package:dipe_project/Diseases/ui/screen/menuDeEnfermedades/tipoEnfermedades/digestivas/calculos.dart';
import 'package:dipe_project/Diseases/ui/screen/menuDeEnfermedades/tipoEnfermedades/digestivas/hemorroides.dart';
import 'package:dipe_project/Diseases/ui/screen/menuDeEnfermedades/tipoEnfermedades/digestivas/reflujo.dart';
import 'package:dipe_project/Diseases/ui/screen/menuDeEnfermedades/tipoEnfermedades/digestivas/tratamientos/recomendaciones-calculos.dart';
import 'package:dipe_project/Diseases/ui/screen/menuDeEnfermedades/tipoEnfermedades/digestivas/tratamientos/recomendaciones-hemorroides.dart';
import 'package:dipe_project/Diseases/ui/screen/menuDeEnfermedades/tipoEnfermedades/digestivas/tratamientos/recomendaciones-reflujo.dart';
import 'package:dipe_project/Diseases/ui/screen/menuDeEnfermedades/tipoEnfermedades/respiratorias/gripe.dart';
import 'package:dipe_project/Diseases/ui/screen/menuDeEnfermedades/tipoEnfermedades/respiratorias/tratamientos/tratamiento-gripe.dart';
import 'package:dipe_project/Diseases/ui/screen/seleccionarSintomas.dart';
import 'package:dipe_project/splashScreen.dart';
import 'package:flutter/material.dart';

import 'package:dipe_project/Diseases/ui/screen/CentrosCercanos.dart';
import 'package:dipe_project/Diseases/ui/screen/home.dart';
import 'package:dipe_project/Diseases/ui/screen/menuPrimerosAuxilios.dart';

import 'Diseases/ui/screen/menuDeEnfermedades/enf-ambientales.dart';
import 'Diseases/ui/screen/menuDeEnfermedades/enf-cardiovasculares.dart';
import 'Diseases/ui/screen/menuDeEnfermedades/enf-digestivas.dart';
import 'Diseases/ui/screen/menuDeEnfermedades/enf-renales.dart';
import 'Diseases/ui/screen/menuDeEnfermedades/enf-respiratorias.dart';
import 'Diseases/ui/screen/menuDeEnfermedades/enf-sistemicas.dart';


Map<String,WidgetBuilder> getAplicationRoutes() => <String, WidgetBuilder>{
  '/'       : (BuildContext context) => SplashScreen(),
  'home'    : (BuildContext context) => HomeScreen(),
  'sintomas' : (BuildContext context) => SeleccionSintomas(),
  'categoria_enfermedades'   : (BuildContext context) => CategoryDB(),
  'menu_primeros_auxilios'  : (BuildContext context) => MenuPrimerosAuxilios(),
  'centros_cercanos'    : (BuildContext context) => CentrosCercanos(),
  'categoria_enfermedades_sistemicas': (BuildContext context) => EnfSistemicas(),
  'categoria_enfermedades_ambientales': (BuildContext context) => EnfAmbientales(),
  'categoria_enfermedades_cardiovascular': (BuildContext context) => EnfCardiovasculares(),
  'categoria_enfermedades_digestiva': (BuildContext context) => EnfDigestivas(),
  'categoria_enfermedades_renales': (BuildContext context) => EnfRenales(),
  'categoria_enfermedades_respiratorias': (BuildContext context) => EnfRespiratorias(),


  'tratamiento_gripe' : (BuildContext context) => TratamientosGripe(),
  'gripe' : (BuildContext context) => Gripe(),
  'reflujo' : (BuildContext context) => Reflujo(),
  'recom_reflujo': (BuildContext context) => RecomReflujo(),
  'calculos': (BuildContext context) => Calculos(),
  'recom_calculos': (BuildContext context) => RecomCalculos(),
  'hemorroides': (BuildContext congtex) => Hemorroides(),
  'recom_hemorroides': (BuildContext context) => RecomHemorroides(),

  'botiquin' : (BuildContext context) => Botiquin()
};