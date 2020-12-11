class CategoryDisease{
   int _id;
   String _category;
   String _description ;
   String _image;

  CategoryDisease(this._id, this._category, this._description ,this._image);


  get getCategoryId => this._id;
  get getCategory => this._category;
  get getCategoryDescription => this._description;
  get getCategoryImage => this._image;


   //getData
  factory CategoryDisease.fromJson(Map<String, dynamic> json){
    
    return CategoryDisease(
      int.parse(json['id'].toString()),
      json['category'],
      json['description'],
      json['image'],


    );
  }
}