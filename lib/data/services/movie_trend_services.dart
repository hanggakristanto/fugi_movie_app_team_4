import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../constant/api_key.dart';
import '../../../constant/global_variable.dart';

// test
class MovieTrendServices {
  Future<List<dynamic>> fetchAllTrend(
      String mediaType,
      // Future<Map<String, dynamic>> fetchAllTrend(String mediaType,
      String timeWindow,
      int page) async {
    Uri uri = Uri.parse(
        '${GlobalVariable.url}/trending/$mediaType/$timeWindow?api_key=${ApiKey.APIKEY}&page=$page');
    try {
      final http.Response res = await http.get(
        uri,
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      var data = jsonDecode(res.body)['results'];
      return data as List<dynamic>;
    } catch (e) {
      throw Exception(e);
    }
  }
}
