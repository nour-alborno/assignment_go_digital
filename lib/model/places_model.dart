class Places {
  List<String>? _images;
  String? _country;
  String? _city;
  String? _description;
  String? _id ;

  Places(Map map){
    _country = map["country"];
    _city = map['city'];
    _description = map["description"];
    _images = map["images"];
    _id = map["id"];

  }


  String? get id => _id;
  set id(String? value) => _id = value;

  String? get description => _description;
  set description(String? value) => _description = value;

  String? get city => _city;
  set city(String? value) => _city = value;

  String? get country => _country;
  set country(String? value) => _country = value;

  List<String>? get images => _images;
  set images(List<String>? value) => _images = value;
}