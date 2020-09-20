import 'dart:convert';

import 'package:globus_management/models/patient.dart';
import 'package:http/http.dart' as http;
import 'package:globus_management/Config/constants.dart';

class PatientController {
  static final http.Client client = http.Client();

  Future<dynamic> getAllPatients() async {
    String getUrl = uri + '/patient/';
    try {
      http.Response response = await client.get(getUrl);
      if (response.statusCode == 200) {
        String data = response.body;
        List<Map<String, dynamic>> patientJsonList = jsonDecode(data);
        List<Patient> patients = [];
        for (Map<String, dynamic> patientJson in patientJsonList) {
          patients.add(Patient.fromJson(patientJson));
        }
        return patients;
      }
      return NOT_FOUND;
    } catch (e) {
      return ERR;
    }
  }

  Future<dynamic> getPatientById(String id) async {
    String getUrl = uri + '/patient/' + id;
    try {
      http.Response response = await client.get(getUrl);
      if (response.statusCode == 200) {
        String data = response.body;
        Map<String, dynamic> patientJson = jsonDecode(data);
        Patient patient = Patient.fromJson(patientJson);
        return patient;
      }
      return NOT_FOUND;
    } catch (e) {
      return ERR;
    }
  }

  Future<dynamic> addPatient(Patient patient) async {
    String postUrl = uri + '/patient/';
    Map<String, dynamic> body = patient.toJson();
    try {
      http.Response response = await client.post(postUrl, body: body);
      if (response.statusCode == 200) {
        String id = jsonDecode(response.body)['id'];
        return id;
      }
      return NOT_ADDED;
    } catch (e) {
      return ERR;
    }
  }

  Future<dynamic> updatePatientById(
      Patient patient, Map<String, dynamic> change) async {
    String postUrl = uri + '/patient/update/';
    Map<String, dynamic> body = {
      'change': change,
      'id': patient.id,
    };
    try {
      http.Response response = await client.post(postUrl, body: body);
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return ERR;
    }
  }
}
