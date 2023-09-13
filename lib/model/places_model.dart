class Places {
  String? _image;
  String? _name;
  String? _description;

  Places(this._image, this._name, this._description);

  String get description => description;

  set description(String value) {
    _description = value;
  }

  String get name => name;

  set name(String value) {
    _name = value;
  }

  String get image => image;

  set image(String value) {
    _image = value;
  }


}