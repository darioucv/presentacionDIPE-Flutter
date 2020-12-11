
import 'package:dipe_project/Diseases/ui/widgets/disease_container.dart';
import 'package:flutter/material.dart';

class DiseasePage extends StatefulWidget {

  final int diseaseID;
  final String disease;
  final String concept;
  final String urlImage;

  const DiseasePage({Key key, this.diseaseID, this.disease, this.concept, this.urlImage}); 


  @override
  _DiseasePageState createState() => _DiseasePageState();
}

class _DiseasePageState extends State<DiseasePage> {
  @override
  Widget build(BuildContext context) {
    return allInformationOfDiseases(widget.diseaseID,widget.disease, widget.concept,widget.urlImage);
  }

  Widget allInformationOfDiseases(int diseaseId, String disease, String concept, String urlImage){
    return DiseaseContainer(
      idDisease:diseaseId,
      disease:disease,
      concept: concept,
      urlImage: urlImage,
    );

  }

}