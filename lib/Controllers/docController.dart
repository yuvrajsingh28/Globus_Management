import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:globus_management/Config/constants.dart';

class DocController {
  static final http.Client client = http.Client();

  Future<dynamic> addDocToPatientById(String id, dynamic doc) async {
    String postUrl = uri + '/doc/';
    Map<String, dynamic> body = {
      'id': id,
      'doc': doc.toJson(),
    };
    try {
      http.Response response = await client.post(postUrl, body: body);
      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } catch (e) {
      return ERR;
    }
  }

  Future<dynamic> updateCurrentPatientDocById(
      String id, Map<String, dynamic> change) async {
    String postUrl = uri + '/doc/update';
    Map<String, dynamic> body = {
      'id': id,
      'change': change,
    };
    try {
      http.Response response = await client.post(postUrl, body: body);
      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } catch (e) {
      return ERR;
    }
  }

  Future<dynamic> getPatientCurrentDocJsonById(String id) async {
    String getUrl = uri + '/doc/' + id;
    try {
      http.Response response = await client.get(getUrl);
      if (response.statusCode == 200) {
        Map<String, dynamic> docJson = jsonDecode(response.body);
        return docJson;
      } else {
        return NOT_FOUND;
      }
    } catch (e) {
      return ERR;
    }
  }

  Future<dynamic> getPatientNextDocJsonById(String id) async {
    String getUrl = uri + '/doc/next/' + id;
    try {
      http.Response response = await client.get(getUrl);
      if (response.statusCode == 200) {
        Map<String, dynamic> docJson = jsonDecode(response.body);
        return docJson;
      } else {
        return NOT_FOUND;
      }
    } catch (e) {
      return ERR;
    }
  }

  Future<dynamic> getPatientPrevDocJsonById(String id) async {
    String getUrl = uri + '/doc/prev/' + id;
    try {
      http.Response response = await client.get(getUrl);
      if (response.statusCode == 200) {
        Map<String, dynamic> docJson = jsonDecode(response.body);
        return docJson;
      } else {
        return NOT_FOUND;
      }
    } catch (e) {
      return ERR;
    }
  }
}
