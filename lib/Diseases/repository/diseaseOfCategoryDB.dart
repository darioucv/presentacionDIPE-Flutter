import 'package:dipe_project/Diseases/model/diseases.dart';
import 'package:dipe_project/Diseases/ui/screen/disease.dart';
import 'package:dipe_project/Diseases/ui/widgets/disease_preview_container.dart';
import 'package:dipe_project/widgets/data_empty.dart';
import 'package:dipe_project/widgets/data_error.dart';
import 'package:dipe_project/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class DiseaseOfCategoryDB extends StatefulWidget {

  final int idCategory;

  DiseaseOfCategoryDB( @required this.idCategory);

  @override
  _DiseaseOfCategoryDBState createState() => _DiseaseOfCategoryDBState();
}

class _DiseaseOfCategoryDBState extends State<DiseaseOfCategoryDB> {
  
  //necesario
  static const String URLFROMAPI_DISEASE = "https://joseg.ga/api/diseases";
  http.Client client;
  List<Disease> diseases;
  bool loading = true;
  bool error = false;
  int idCategory;

  //lo que sucede al inicio del page
  @override
  void initState() { // init + tab
    client = http.Client();
    diseases = List<Disease>();
    fetchDataFromJSON();
    super.initState();
    idCategory = widget.idCategory;
  }
  //lo que sucede cuando se cierra la app o el screen
  @override
  void dispose() {//dispo + tab
    client?.close(); 
    super.dispose();
  }
  //return lista
  Future<void> fetchDataFromJSON() async{
    http.Response respuesta = await client.get(URLFROMAPI_DISEASE);
    
    if(respuesta.statusCode == 200){

      diseases.clear();

      List jsonData = json.decode(utf8.decode(respuesta.bodyBytes));

      jsonData.map((dynamic json) => diseases.add(Disease.fromJson(json))).toList();


      setState(() {
        loading = false;
      });
    }else{
      Exception('Ha sucedido un error al consultar la api');
      setState(() {
        loading = false;
        error = true;
      });
    }
  }
  void updateContent(){
    setState(() {
      error = false;
      loading = true;
      fetchDataFromJSON();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: loading ? Loading() :  customListBuilder()
   );
  }


  Widget customListBuilder(){

    if(error){
      return DataError(onPressed: ()=>updateContent());
    }else{
      return SafeArea(//para que respete el margen de la app
        child: RefreshIndicator(
          child: Container(
            child: diseases.isEmpty? DataEmpty() : ListView.builder(
              itemCount: diseases.length,
              itemBuilder: (BuildContext context, int index){
                String urlImageCategory = URLFROMAPI_DISEASE+'/'+diseases[index].getDiseaseImage;
                int idCategoryDisease = diseases[index].getDiseaseCategoryId;
                  /* print('index: '+index.toString());
                  print('id elegido'+idCategory.toString());
                  print('cagoryId: '+idCategoryDisease.toString()); */
                  if(idCategoryDisease == idCategory){
                   return ListTile(
                    title:DiseasePreviewContainer(
                      disease:diseases[index].getDisease,
                      concept:diseases[index].getDiseaseConcept,
                      urlImage:urlImageCategory ,
                      onPressed:(){
                        Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DiseasePage(
                          diseaseID:diseases[index].getDiseaseId,
                          disease:diseases[index].getDisease,
                          concept:diseases[index].getDiseaseConcept,
                          urlImage:urlImageCategory)
                      ));
                      },
                    ),
                  ); 

                  }else{
                    print("estado false");
                  }
              },
            ),
          ),
          onRefresh: () async => await Future.delayed(Duration(seconds: 2), () => updateContent()),
        ),
      );
    }
  }
}