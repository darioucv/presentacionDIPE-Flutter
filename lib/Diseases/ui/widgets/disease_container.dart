import 'package:dipe_project/Diseases/model/cause_disease.dart';
import 'package:dipe_project/widgets/button_generic_disease.dart';
import 'package:dipe_project/widgets/data_empty.dart';
import 'package:dipe_project/widgets/data_error.dart';
import 'package:dipe_project/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class DiseaseContainer extends StatefulWidget { 

  final String disease;
  final String concept;
  final String urlImage;
  final int idDisease;

  const DiseaseContainer({Key key, this.disease,  this.concept,  this.urlImage, this.idDisease});


  @override
  _DiseaseContainerState createState() => _DiseaseContainerState();
}


class _DiseaseContainerState extends State<DiseaseContainer> {

  @override
  Widget build(BuildContext context) {
    return DiseaseContainerWidget(widget.idDisease,widget.disease,widget.concept,widget.urlImage);
  }


  Widget DiseaseContainerWidget(int idDiseases,String disease,String concept, String urlImage){
    
    return SafeArea(

      child:ListView(

        children:<Widget> [
              Card(
                child: Container(
                  child: Image.network(urlImage),
                ),
              ),
              Card(
                child: Container(
                  child: Text(disease),
                ),
              ),
              Card(
                child: Container(
                  child: Text(concept),
                ), 
              ),
              ButtonGenericDisease(title:"Causas" ,onPressed: ()=>Navigator.pushNamed(context, "recom_reflujo") ),
              ButtonGenericDisease(title:"Síntomas" ,onPressed: ()=>Navigator.pushNamed(context, "recom_reflujo") ),
              ButtonGenericDisease(title:"Recomendaciones" ,onPressed: ()=>Navigator.pushNamed(context, "recom_reflujo") ),
              
              /* Text(idDisease.toString()) */
              /* ListCauseDiseaseDB(idDisease), */
        ],
      )
    ); 
    
  }
  
}