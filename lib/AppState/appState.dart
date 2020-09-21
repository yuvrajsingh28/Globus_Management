import 'package:globus_management/models/patient.dart';

import 'package:globus_management/Controllers/patientController.dart';

class AppState {
  Map<String, dynamic> _currentDocJson;
  List<Patient> _patients;
  PatientController _patientController = PatientController();

  Future initPatients() async {
    _patients = await _patientController.getAllPatients();
  }

  List<Patient> get patients => _patients;
}
