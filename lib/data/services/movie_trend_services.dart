import 'dart:convert';
import 'dart:developer';

import 'package:fugi_movie_app_team_4/data/model/movie_trend_result.dart';
import 'package:http/http.dart' as http;

import '../../../constant/api_key.dart';
import '../../../constant/global_variable.dart';

// test
class MovieTrendServices {
  Future<List<dynamic>> fetchAllTrend(String mediaType,
  // Future<Map<String, dynamic>> fetchAllTrend(String mediaType,
      String timeWindow, int page) async {
        log('url = ${GlobalVariable.url}/trending/$mediaType/$timeWindow?api_key=${ApiKey.APIKEY}&page=$page');
    Uri uri =
        Uri.parse('${GlobalVariable.url}/trending/$mediaType/$timeWindow?api_key=${ApiKey.APIKEY}&page=$page');
    try {
      final http.Response res = await http.get(
        uri,
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      // log("response");
      // log(res.body);
      var data = jsonDecode(res.body)['results'];
      // var data = jsonDecode(res.body) as Map<String, dynamic>;
      // log("data");
      // log(data.toString());
      // log("data2");
      return data as List<dynamic>;
      // return json.decode(res.body).cast<Map<String, dynamic>>();
      // return data;
    } catch (e) {
      throw Exception(e);
    }
  }
}
