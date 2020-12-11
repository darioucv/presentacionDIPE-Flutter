import 'package:dipe_project/Diseases/model/category.dart';
import 'package:dipe_project/Diseases/repository/DiseaseOfCategoryDB.dart';
import 'package:dipe_project/Diseases/ui/screen/listDiseaseOfCategory.dart';
import 'package:dipe_project/Diseases/ui/widgets/category_container.dart';
import 'package:dipe_project/widgets/data_empty.dart';
import 'package:dipe_project/widgets/data_error.dart';
import 'package:dipe_project/widgets/loading.dart';
import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class CategoryDB extends StatefulWidget {

  @override
  _CategoryDBState createState() => _CategoryDBState();
}

class _CategoryDBState extends State<CategoryDB> {

  static const String URLFROMAPI_CATEGORY = "https://joseg.ga/api/categories";
  http.Client client;
  List<CategoryDisease> categories;
  bool loading = true;  
  bool error = false;


   @override
  void initState() { // init + tab
    client = http.Client();
    categories = List<CategoryDisease>();
    fetchDataFromJSON();
    super.initState();

  }
 @override
  void dispose() {//dispo + tab
    client?.close(); 

    super.dispose();
  }

  Future<void> fetchDataFromJSON() async
  {
    
    http.Response respuestaCategory = await client.get(URLFROMAPI_CATEGORY);
    
    if(respuestaCategory.statusCode == 200 )
    {

      categories.clear();

      List jsonDataCategory = json.decode(utf8.decode(respuestaCategory.bodyBytes));
      
      jsonDataCategory.map((dynamic json) => categories.add(CategoryDisease.fromJson(json))).toList();

      setState(() {
        loading = false;
      });

    }else
    {
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
            child: categories.isEmpty? DataEmpty() : ListView.builder(
              itemCount: categories.length,
              itemBuilder: (BuildContext context, int index){
                String urlImageCategory = URLFROMAPI_CATEGORY+'/'+categories[index].getCategoryImage;
                
                return ListTile(
                  title: CategoryContainer(
                    urlImage: urlImageCategory,
                    category: categories[index].getCategory,
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ListDiseaseOfCategory(
                          categoryId:categories[index].getCategoryId)
                      ));
                    },
                  ),
                );
               
              },
            ),
          ),
          onRefresh: () async => await Future.delayed(Duration(seconds: 2), () => updateContent()),
        ),
      );
    }
  }

}