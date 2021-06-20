import 'dart:convert';

import 'package:http/http.dart';

class NetworkService {
  final baseUrl = "http://localhost:3000/";
  Future<List<dynamic>> getTodos() async {
    try {
      final response = await get(Uri.parse(baseUrl + "/todos"));
      return jsonDecode(response.body) as List;
    } catch (error) {
      return null;
    }

  }
}