class Patient {
  String _name;
  String _id;

  Patient({String name, String id}) {
    this._name = name;
    this._id = id;
  }

  String get name => _name;
  set name(String name) => _name = name;

  String get id => _id;
  set id(String id) => _id = id;

  Patient.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    data['id'] = this._id;
    return data;
  }
}
