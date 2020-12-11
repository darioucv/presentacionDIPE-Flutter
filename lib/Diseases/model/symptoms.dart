class Symptom{
   int _id;
   String _symptom;
   String _description;

  Symptom(this._id,this._symptom,this._description);


  get getsymptomId => this._id;
  get getsymptom => this._symptom;
  get getsymptomConcept => this._description;


  //getData
  factory Symptom.fromJson(Map<String, dynamic> json){
    return Symptom(
      int.parse(json['id'].toString()),
      json['symptom'].toString(),
      json['description'].toString(),
    );
  }

}
