import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({
    required String url,
    @required String? token,
  }) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      });
    }
    http.Response response = await http.get(Uri.parse(url), headers: headers);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('ther is a problem status code ${response.statusCode}');
    }
  }

  Future<dynamic> post({
    required String Url,
    @required dynamic body,
    @required String? token,
    required Map<String, String> headers,
  }) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      });
    }
    http.Response response =
        await http.post(Uri.parse(Url), body: body, headers: headers);
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);

      return data;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode}with body ${jsonDecode(response.body)}');
    }
  }

  Future<dynamic> patch({
    required String Url,
    @required dynamic body,
    @required String? token,
    required Map<String, String> headers,
  }) async {
    Map<String, String> headers = {};
    headers.addAll({
      'Content-Type': 'application/json',
    });
    if (token != null) {
      headers.addAll({
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      });
    }
    http.Response response =
        await http.post(Uri.parse(Url), body: body, headers: headers);
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);

      return data;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode}with body ${jsonDecode(response.body)}');
    }
  }
}
