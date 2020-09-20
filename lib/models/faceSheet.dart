class FaceSheet {
  String _nameOfPatient;
  int _age;
  String _sex;
  String _uhid;
  String _ipdNo;
  String _fatherHusbandName;
  String _address;
  String _telNo;
  String _occupation;
  String _nationality;
  String _wardRoomNo;
  String _bedNo;
  String _dateOfAddmission;
  String _dateOfDischarges;
  int _totalDays;
  String _financialArrangement;
  bool _tpa = false;
  bool _empaneledCreditLetter = false;
  bool _employeeDependant = false;
  bool _selfPayingCash = false;
  String _provisionalDiagnosis;
  String _operativeSpecialProcedures;
  bool _result = false;
  bool _discharge = false;
  bool _reffered = false;
  bool _lama = false;
  bool _investigationOnly = false;
  bool _dO = false;

  FaceSheet(
      {String nameOfPatient,
      int age,
      String sex,
      String uhid,
      String ipdNo,
      String fatherHusbandName,
      String address,
      String telNo,
      String occupation,
      String nationality,
      String wardRoomNo,
      String bedNo,
      String dateOfAddmission,
      String dateOfDischarges,
      int totalDays,
      String financialArrangement,
      bool tpa,
      bool empaneledCreditLetter,
      bool employeeDependant,
      bool selfPayingCash,
      String provisionalDiagnosis,
      String operativeSpecialProcedures,
      bool result,
      bool discharge,
      bool reffered,
      bool lama,
      bool investigationOnly,
      bool dO}) {
    this._nameOfPatient = nameOfPatient;
    this._age = age;
    this._sex = sex;
    this._uhid = uhid;
    this._ipdNo = ipdNo;
    this._fatherHusbandName = fatherHusbandName;
    this._address = address;
    this._telNo = telNo;
    this._occupation = occupation;
    this._nationality = nationality;
    this._wardRoomNo = wardRoomNo;
    this._bedNo = bedNo;
    this._dateOfAddmission = dateOfAddmission;
    this._dateOfDischarges = dateOfDischarges;
    this._totalDays = totalDays;
    this._financialArrangement = financialArrangement;
    this._tpa = tpa;
    this._empaneledCreditLetter = empaneledCreditLetter;
    this._employeeDependant = employeeDependant;
    this._selfPayingCash = selfPayingCash;
    this._provisionalDiagnosis = provisionalDiagnosis;
    this._operativeSpecialProcedures = operativeSpecialProcedures;
    this._result = result;
    this._discharge = discharge;
    this._reffered = reffered;
    this._lama = lama;
    this._investigationOnly = investigationOnly;
    this._dO = dO;
  }

  String get nameOfPatient => _nameOfPatient;
  set nameOfPatient(String nameOfPatient) => _nameOfPatient = nameOfPatient;
  int get age => _age;
  set age(int age) => _age = age;
  String get sex => _sex;
  set sex(String sex) => _sex = sex;
  String get uhid => _uhid;
  set uhid(String uhid) => _uhid = uhid;
  String get ipdNo => _ipdNo;
  set ipdNo(String ipdNo) => _ipdNo = ipdNo;
  String get fatherHusbandName => _fatherHusbandName;
  set fatherHusbandName(String fatherHusbandName) =>
      _fatherHusbandName = fatherHusbandName;
  String get address => _address;
  set address(String address) => _address = address;
  String get telNo => _telNo;
  set telNo(String telNo) => _telNo = telNo;
  String get occupation => _occupation;
  set occupation(String occupation) => _occupation = occupation;
  String get nationality => _nationality;
  set nationality(String nationality) => _nationality = nationality;
  String get wardRoomNo => _wardRoomNo;
  set wardRoomNo(String wardRoomNo) => _wardRoomNo = wardRoomNo;
  String get bedNo => _bedNo;
  set bedNo(String bedNo) => _bedNo = bedNo;
  String get dateOfAddmission => _dateOfAddmission;
  set dateOfAddmission(String dateOfAddmission) =>
      _dateOfAddmission = dateOfAddmission;
  String get dateOfDischarges => _dateOfDischarges;
  set dateOfDischarges(String dateOfDischarges) =>
      _dateOfDischarges = dateOfDischarges;
  int get totalDays => _totalDays;
  set totalDays(int totalDays) => _totalDays = totalDays;
  String get financialArrangement => _financialArrangement;
  set financialArrangement(String financialArrangement) =>
      _financialArrangement = financialArrangement;
  bool get tpa => _tpa;
  set tpa(bool tpa) => _tpa = tpa;
  bool get empaneledCreditLetter => _empaneledCreditLetter;
  set empaneledCreditLetter(bool empaneledCreditLetter) =>
      _empaneledCreditLetter = empaneledCreditLetter;
  bool get employeeDependant => _employeeDependant;
  set employeeDependant(bool employeeDependant) =>
      _employeeDependant = employeeDependant;
  bool get selfPayingCash => _selfPayingCash;
  set selfPayingCash(bool selfPayingCash) => _selfPayingCash = selfPayingCash;
  String get provisionalDiagnosis => _provisionalDiagnosis;
  set provisionalDiagnosis(String provisionalDiagnosis) =>
      _provisionalDiagnosis = provisionalDiagnosis;
  String get operativeSpecialProcedures => _operativeSpecialProcedures;
  set operativeSpecialProcedures(String operativeSpecialProcedures) =>
      _operativeSpecialProcedures = operativeSpecialProcedures;
  bool get result => _result;
  set result(bool result) => _result = result;
  bool get discharge => _discharge;
  set discharge(bool discharge) => _discharge = discharge;
  bool get reffered => _reffered;
  set reffered(bool reffered) => _reffered = reffered;
  bool get lama => _lama;
  set lama(bool lama) => _lama = lama;
  bool get investigationOnly => _investigationOnly;
  set investigationOnly(bool investigationOnly) =>
      _investigationOnly = investigationOnly;
  bool get dO => _dO;
  set dO(bool dO) => _dO = dO;

  FaceSheet.fromJson(Map<String, dynamic> json) {
    _nameOfPatient = json['name_of_patient'];
    _age = json['age'];
    _sex = json['sex'];
    _uhid = json['uhid'];
    _ipdNo = json['ipd_no'];
    _fatherHusbandName = json['father_husband_name'];
    _address = json['address'];
    _telNo = json['tel_no'];
    _occupation = json['occupation'];
    _nationality = json['nationality'];
    _wardRoomNo = json['ward_room_no'];
    _bedNo = json['bed_no'];
    _dateOfAddmission = json['date_of_addmission'];
    _dateOfDischarges = json['date_of_discharges'];
    _totalDays = json['total_days'];
    _financialArrangement = json['financial_arrangement'];
    _tpa = json['tpa'];
    _empaneledCreditLetter = json['empaneled_credit_letter'];
    _employeeDependant = json['employee_dependant'];
    _selfPayingCash = json['self_paying_cash'];
    _provisionalDiagnosis = json['provisional_diagnosis'];
    _operativeSpecialProcedures = json['operative_special_procedures'];
    _result = json['result'];
    _discharge = json['discharge'];
    _reffered = json['reffered'];
    _lama = json['lama'];
    _investigationOnly = json['investigation_only'];
    _dO = json['d_o'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name_of_patient'] = this._nameOfPatient;
    data['age'] = this._age;
    data['sex'] = this._sex;
    data['uhid'] = this._uhid;
    data['ipd_no'] = this._ipdNo;
    data['father_husband_name'] = this._fatherHusbandName;
    data['address'] = this._address;
    data['tel_no'] = this._telNo;
    data['occupation'] = this._occupation;
    data['nationality'] = this._nationality;
    data['ward_room_no'] = this._wardRoomNo;
    data['bed_no'] = this._bedNo;
    data['date_of_addmission'] = this._dateOfAddmission;
    data['date_of_discharges'] = this._dateOfDischarges;
    data['total_days'] = this._totalDays;
    data['financial_arrangement'] = this._financialArrangement;
    data['tpa'] = this._tpa;
    data['empaneled_credit_letter'] = this._empaneledCreditLetter;
    data['employee_dependant'] = this._employeeDependant;
    data['self_paying_cash'] = this._selfPayingCash;
    data['provisional_diagnosis'] = this._provisionalDiagnosis;
    data['operative_special_procedures'] = this._operativeSpecialProcedures;
    data['result'] = this._result;
    data['discharge'] = this._discharge;
    data['reffered'] = this._reffered;
    data['lama'] = this._lama;
    data['investigation_only'] = this._investigationOnly;
    data['d_o'] = this._dO;
    return data;
  }
}
