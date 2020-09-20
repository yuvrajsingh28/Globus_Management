class PatientCharterForm {
  bool _agreeToAll;

  PatientCharterForm({bool agreeToAll}) {
    this._agreeToAll = agreeToAll;
  }

  bool get agreeToAll => _agreeToAll;
  set agreeToAll(bool agreeToAll) => _agreeToAll = agreeToAll;

  PatientCharterForm.fromJson(Map<String, dynamic> json) {
    _agreeToAll = json['agree_to_all'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['agree_to_all'] = this._agreeToAll;
    return data;
  }
}
