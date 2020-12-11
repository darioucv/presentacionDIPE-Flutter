class Recommendation{
   int _id;
   String _recommendation;
   String _concept;
   String _image;

  Recommendation(this._id,this._recommendation,this._concept,this._image);


  get getRecommendationId => this._id;
  get getRecommendation => this._recommendation;
  get getRecommendationConcept => this._concept;
  get getImageConcept => this._image;


  //getData
  factory Recommendation.fromJson(Map<String, dynamic> json){
    return Recommendation(
      int.parse(json['id'].toString()),
      json['recommendation'].toString(),
      json['concept'].toString(),
      json['image'].toString(),

    );
  }

}
