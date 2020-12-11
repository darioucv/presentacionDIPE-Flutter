class CauseDisease{
   int _disease_id1;
   int _cause_id;

  CauseDisease(this._disease_id1,this._cause_id);

  get getCDDiseaseId => this._disease_id1;
  get getCDCauseId => this._cause_id;

  //getData
  factory CauseDisease.fromJson(Map<String, dynamic> json){
    return CauseDisease(
      int.parse(json['disease_id1'].toString()),
      int.parse(json['cause_id'].toString()),
      
    );
  }

}
