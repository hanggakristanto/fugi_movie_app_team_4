import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../../../constant/api_key.dart';
import '../../../constant/global_variable.dart';

// test
class MovieTrendServices {
  Future<Map<String, dynamic>> fetchAllTrend(String mediaType,
      String timeWindow, int page) async {
        log('url = $url/trending/$mediaType/$timeWindow?api_key=$apiKey&page=$page');
    Uri uri =
        Uri.parse('$url/trending/$mediaType/$timeWindow?api_key=$apiKey&page=$page');
    try {
      final http.Response res = await http.get(
        uri,
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      // log("response");
      // log(res.body);
      // var data = jsonDecode(res.body)['results'];
      // log("data");
      // log(data.toString());
      // log("data2");
      // return data as List<dynamic>;
      return json.decode(res.body).cast<Map<String, dynamic>>();
    } catch (e) {
      throw Exception(e);
    }
  }
}
