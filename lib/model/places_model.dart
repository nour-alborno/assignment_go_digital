class Places {
  List<String>? images;
  String? country;
  String? city;
  String? description;
  String? id ;

  Places(Map map){
    this.country = map["country"];
    this.city = map['city'];
    this.description = map["description"];
    this.images = map["images"];
    this.id = map["id"];

  }

}