// services/callhttp.dart

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import '../utils/webutils.dart';

class CallHttpService {
  // GET
  static Future<List<String>> getMethod() async {
    WebUtils _webUtils = new WebUtils();
    String _url = 'http://api.url';

    // basic authentification if needed
    String _username = 'username';
    String _password = 'password';
    String basicAuth =
        'Basic ' + base64Encode(utf8.encode('$_username:$_password'));
    Map<String, String> _headers = {HttpHeaders.authorizationHeader: basicAuth};

    var _result =
        await _webUtils.get(_url, headers: _headers).then((dynamic res) {
      return res;
    });

    if (_result.statusCode != 200) {
      // Do Something
      // Map s = json.decode(_result.body);
      // String error = s['message'];
      return null;
    }

    List decoded = json.decode(_result.body);

    List<String> returnList = new List<String>();

    for (int i = 0; i < decoded.length; i++) {
      returnList.add(decoded[i]["text"]);
    }

    return returnList;
  }

  // POST
  static Future<double> postMethod(dynamic body) async {
    WebUtils _webUtils = new WebUtils();
    String _url = 'http://api.url';

    // basic authentification if needed
    String _username = 'username';
    String _password = 'password';
    String basicAuth =
        'Basic ' + base64Encode(utf8.encode('$_username:$_password'));

    Map<String, String> _headers = {
      'authorization': basicAuth,
      'Content-Type': 'application/json'
    };

    http.Response _result = await _webUtils
        .post(_url, headers: _headers, body: body)
        .then((dynamic res) {
      return res;
    });

    if (_result.statusCode != 200) {
      // Do Something
      // Map s = json.decode(_result.body);
      // String error = s['message'];
      return -1;
    }

    return double.parse(_result.body);
  }

  // PUT
  // body = jsonString content
  static Future<bool> putMethod(dynamic body) async {
    WebUtils _webUtils = new WebUtils();
    String _url = 'http://api.url';

    // basic authentification if needed
    String _username = 'username';
    String _password = 'password';
    String basicAuth =
        'Basic ' + base64Encode(utf8.encode('$_username:$_password'));
    Map<String, String> _headers = {
      'authorization': basicAuth,
      'Content-Type': 'application/json'
    };

    http.Response _result = await _webUtils
        .put(_url, headers: _headers, body: body)
        .then((dynamic res) {
      return res;
    });

    if (_result.statusCode != 200) {
      // Do Something
      // Map s = json.decode(_result.body);
      // String error = s['message'];
      return false;
    }

    return true;
  }

  // DELETE
  static Future<bool> deleteMethod(String id) async {
    WebUtils _webUtils = new WebUtils();
    String _url = 'http://api.url';

    // basic authentification if needed
    String _username = 'username';
    String _password = 'password';
    String basicAuth =
        'Basic ' + base64Encode(utf8.encode('$_username:$_password'));

    Map<String, String> _headers = {
      'authorization': basicAuth,
      'Content-Type': 'application/json'
    };
    http.Response _result =
        await _webUtils.delete(_url, headers: _headers).then((dynamic res) {
      return res;
    });

    if (_result.statusCode != 200) {
      // Do Something
      // Map s = json.decode(_result.body);
      // String error = s['message'];
      return false;
    }

    return true;
  }
}
