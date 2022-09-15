import 'dart:convert';
import 'dart:io';

import 'package:big_test/src/url/base_url.dart';
import 'package:big_test/src/utils/shared_pref_util.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ServiceApi {
  static final baseUrl = BaseUrl.getBaseUrl();

  static Future postDataLogin(
      String endpoint, Map<String, dynamic> mapLogin) async {
    try {
      final response =
          await http.post(Uri.parse("$baseUrl/$endpoint"), body: mapLogin);

      return json.decode(response.body);
    } catch (e) {
      debugPrint("error login -> $e");
    }
  }

  static Future getData(String endpoint, Map<String, dynamic> map) async {
    try {
      final response = await http.get(Uri.parse("$baseUrl/$endpoint"),
          headers: setHeader(await SharedPrefUtil.getToken()));

      return json.decode(response.body);
    } catch (e) {
      debugPrint("Error get data -> $e");
      return [];
    }
  }

  static Future postData(String endpoint, Map<String, dynamic> map) async {
    final token = await SharedPrefUtil.getToken();

    try {
      final response = await http.post(Uri.parse('$baseUrl/$endpoint'),
          headers: setHeader(token.toString()), body: json.encode(map));

      return json.decode(response.body);
    } catch (e) {
      debugPrint("Error post data -> ${e.toString()}");
      return [];
    }
  }

  static Map<String, String> setHeader(String token) {
    return {
      HttpHeaders.acceptHeader: 'application/json',
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.authorizationHeader: token
    };
  }
}
