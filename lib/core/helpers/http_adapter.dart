import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter_epayco_payments/core/exceptions/api_exception.dart';
import 'package:http/http.dart' as http;

class HttpAdapter {
  final String baseUrl;
  HttpAdapter({required this.baseUrl});

  Future<dynamic> httpPostResponse(
      {required String uri, Object? body, Map<String, String>? headers}) async {
    try {
      final http.Response response = await http.post(
        Uri.parse('$baseUrl/$uri'),
        body: body,
        headers: headers,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return json.decode(response.body);
      }
      throw ApiException(
          statusCode: response.statusCode,
          message: 'Error to load REST API data: ${response.reasonPhrase}');
    } on TimeoutException catch (e) {
      throw ApiException(message: 'Error connection timeout: ${e.message}');
    } on SocketException catch (e) {
      throw ApiException(message: 'Socket error: ${e.message}');
    } on Error catch (e) {
      throw ApiException(message: 'General error: $e');
    }
  }

  Future<Map<String, dynamic>> httpGetResponse(
      {required String uri,
      Map<String, String>? headers,
      bool withBaseUrl = true}) async {
    try {
      final http.Response response = await http.get(
          Uri.parse(withBaseUrl ? '$baseUrl/$uri' : uri),
          headers: headers);
      if (response.statusCode == 200) {
        return json.decode(response.body);
      }
      throw ApiException(
          statusCode: response.statusCode,
          message: 'Error to load REST API data: ${response.reasonPhrase}');
    } on TimeoutException catch (e) {
      throw ApiException(message: 'Error connection timeout: ${e.message}');
    } on SocketException catch (e) {
      throw ApiException(message: 'Socket error: ${e.message}');
    } on Error catch (e) {
      throw ApiException(message: 'General error: $e');
    }
  }
}
