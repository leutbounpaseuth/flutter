// utils/webutils.dart

import 'dart:async';

import 'package:http/http.dart' as http;

class WebUtils {

  static WebUtils _instance = new WebUtils.internal();
  WebUtils.internal();
  factory WebUtils() => _instance;

  Future<dynamic> get(String url, {Map headers}) async {
    return http.get(url, headers: headers).then((http.Response response) {
      return response;
    });
  }

  Future<dynamic> post(String url, {Map headers, body, encoding}) async {
    return http
        .post(url, body: body, headers: headers, encoding: encoding)
        .then((http.Response response) {
      return response;
    });
  }

  Future<dynamic> put(String url, {Map headers, body, encoding}) async {
    return http
        .put(url, body: body, headers: headers, encoding: encoding)
        .then((http.Response response) {
      return response;
    });
  }

    Future<dynamic> delete(String url, {Map headers}) async {
    return http
        .delete(url, headers: headers)
        .then((http.Response response) {
      return response;
    });
  }
}
