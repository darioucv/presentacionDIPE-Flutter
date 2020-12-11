class SymptomDisease{
   int _disease_id2;
   int _symptom_id;

  SymptomDisease(this._disease_id2,this._symptom_id);

  get getSDDiseaseId => this._disease_id2;
  get getSDSymptomId => this._symptom_id;

  //getData
  factory SymptomDisease.fromJson(Map<String, dynamic> json){
    return SymptomDisease(
      int.parse(json['disease_id2'].toString()),
      int.parse(json['symptom_id'].toString()),
      
    );
  }

}