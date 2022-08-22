import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../constant/api_key.dart';
import '../../../constant/global_variable.dart';

// test
class MovieTrendServices {
  Future<List<dynamic>> fetchAllTrend(String mediaType,
      String timeWindow, int page) async {
    Uri uri =
        Uri.parse('$url/$mediaType/$timeWindow?api_key=$apiKey&page=$page');
    try {
      final http.Response res = await http.get(
        uri,
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      return jsonDecode(res.body) as List<dynamic>;
    } catch (e) {
      throw Exception(e);
    }
  }
}
