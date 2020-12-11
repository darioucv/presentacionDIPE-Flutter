class Disease{
   int _id;
   String _disease;
   String _concept ;
   int _popularity;
   int _category_id;
   String _image ;

  Disease(this._id, this._disease, this._concept, this._popularity, this._category_id, this._image);


  get getDiseaseId => this._id;
  get getDisease => this._disease;
  get getDiseaseConcept => this._concept;
  get getDiseasePopularity => this._popularity;
  get getDiseaseCategoryId => this._category_id;
  get getDiseaseImage => this._image;


  //getData
  factory Disease.fromJson(Map<String, dynamic> json){
    return Disease(
      int.parse(json['id'].toString()),
      json['disease'].toString(),
      json['concept'].toString(),
      int.parse(json['popularity'].toString()),
      int.parse(json['category_id'].toString()),
      json['image'].toString(),
    );
  }


}
