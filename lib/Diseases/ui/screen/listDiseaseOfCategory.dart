import 'package:dipe_project/Diseases/repository/DiseaseOfCategoryDB.dart';
import 'package:flutter/material.dart';
class ListDiseaseOfCategory extends StatefulWidget {

  final int categoryId;

  const ListDiseaseOfCategory({Key key, this.categoryId});

  @override
  _ListDiseaseOfCategoryState createState() => _ListDiseaseOfCategoryState();
}

class _ListDiseaseOfCategoryState extends State<ListDiseaseOfCategory> {
  @override
  Widget build(BuildContext context) {
    return DiseaseOfCategoryDB(widget.categoryId);
  }
}