class Cause{
   int _id;
   String _cause;
   String _description;

  Cause(this._id,this._cause,this._description);


  get getCauseId => this._id;
  get getCause => this._cause;
  get getCauseDescription => this._description;

  //getData
  factory Cause.fromJson(Map<String, dynamic> json){
    return Cause(
      int.parse(json['id'].toString()),
      json['cause'].toString(),
      json['description'].toString(),
    );
  }

}
