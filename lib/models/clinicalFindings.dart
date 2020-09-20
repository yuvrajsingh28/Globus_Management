class ClinicalFindings {
  String _gc;
  String _p;
  String _bp;
  String _temprature;
  String _rr;
  String _spo2;
  String _hydration;
  String _pallor;
  String _ecterus;
  String _cyanosis;
  String _jvp;
  String _oedema;
  String _cvs;
  String _respiratory;
  String _cns;
  String _abdomen;
  String _provisionalDiagonosis;

  ClinicalFindings(
      {String gc,
      String p,
      String bp,
      String temprature,
      String rr,
      String spo2,
      String hydration,
      String pallor,
      String ecterus,
      String cyanosis,
      String jvp,
      String oedema,
      String cvs,
      String respiratory,
      String cns,
      String abdomen,
      String provisionalDiagonosis}) {
    this._gc = gc;
    this._p = p;
    this._bp = bp;
    this._temprature = temprature;
    this._rr = rr;
    this._spo2 = spo2;
    this._hydration = hydration;
    this._pallor = pallor;
    this._ecterus = ecterus;
    this._cyanosis = cyanosis;
    this._jvp = jvp;
    this._oedema = oedema;
    this._cvs = cvs;
    this._respiratory = respiratory;
    this._cns = cns;
    this._abdomen = abdomen;
    this._provisionalDiagonosis = provisionalDiagonosis;
  }

  String get gc => _gc;
  set gc(String gc) => _gc = gc;
  String get p => _p;
  set p(String p) => _p = p;
  String get bp => _bp;
  set bp(String bp) => _bp = bp;
  String get temprature => _temprature;
  set temprature(String temprature) => _temprature = temprature;
  String get rr => _rr;
  set rr(String rr) => _rr = rr;
  String get spo2 => _spo2;
  set spo2(String spo2) => _spo2 = spo2;
  String get hydration => _hydration;
  set hydration(String hydration) => _hydration = hydration;
  String get pallor => _pallor;
  set pallor(String pallor) => _pallor = pallor;
  String get ecterus => _ecterus;
  set ecterus(String ecterus) => _ecterus = ecterus;
  String get cyanosis => _cyanosis;
  set cyanosis(String cyanosis) => _cyanosis = cyanosis;
  String get jvp => _jvp;
  set jvp(String jvp) => _jvp = jvp;
  String get oedema => _oedema;
  set oedema(String oedema) => _oedema = oedema;
  String get cvs => _cvs;
  set cvs(String cvs) => _cvs = cvs;
  String get respiratory => _respiratory;
  set respiratory(String respiratory) => _respiratory = respiratory;
  String get cns => _cns;
  set cns(String cns) => _cns = cns;
  String get abdomen => _abdomen;
  set abdomen(String abdomen) => _abdomen = abdomen;
  String get provisionalDiagonosis => _provisionalDiagonosis;
  set provisionalDiagonosis(String provisionalDiagonosis) =>
      _provisionalDiagonosis = provisionalDiagonosis;

  ClinicalFindings.fromJson(Map<String, dynamic> json) {
    _gc = json['gc'];
    _p = json['p'];
    _bp = json['bp'];
    _temprature = json['temprature'];
    _rr = json['rr'];
    _spo2 = json['spo2'];
    _hydration = json['hydration'];
    _pallor = json['pallor'];
    _ecterus = json['ecterus'];
    _cyanosis = json['cyanosis'];
    _jvp = json['jvp'];
    _oedema = json['oedema'];
    _cvs = json['cvs'];
    _respiratory = json['respiratory'];
    _cns = json['cns'];
    _abdomen = json['abdomen'];
    _provisionalDiagonosis = json['provisional_diagonosis'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['gc'] = this._gc;
    data['p'] = this._p;
    data['bp'] = this._bp;
    data['temprature'] = this._temprature;
    data['rr'] = this._rr;
    data['spo2'] = this._spo2;
    data['hydration'] = this._hydration;
    data['pallor'] = this._pallor;
    data['ecterus'] = this._ecterus;
    data['cyanosis'] = this._cyanosis;
    data['jvp'] = this._jvp;
    data['oedema'] = this._oedema;
    data['cvs'] = this._cvs;
    data['respiratory'] = this._respiratory;
    data['cns'] = this._cns;
    data['abdomen'] = this._abdomen;
    data['provisional_diagonosis'] = this._provisionalDiagonosis;
    return data;
  }
}
