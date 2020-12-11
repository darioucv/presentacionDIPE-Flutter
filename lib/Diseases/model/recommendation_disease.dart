class RecommendationDisease{
   int _disease_id3;
   int _recommendation_id;

  RecommendationDisease(this._disease_id3,this._recommendation_id);

  get getRDDiseaseId => this._disease_id3;
  get getRDRecommendationId => this._recommendation_id;

  //getData
  factory RecommendationDisease.fromJson(Map<String, dynamic> json){
    return RecommendationDisease(
      int.parse(json['disease_id3'].toString()),
      int.parse(json['recommendation_id'].toString()),
      
    );
  }

}