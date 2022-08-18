import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../../constant/api_key.dart';
import '../../../constant/global_variable.dart';
import '../../../model/movie_trend.dart';

class MovieTrendServices {
  List<MovieTrend> parseData(String responseBody) {
    final list = json.decode(responseBody).cast<Map<String, dynamic>>();
    var movieTrend =
        list.map<MovieTrend>((e) => MovieTrend.fromJson(e)).toList();
    return movieTrend;
  }

  Future<List<MovieTrend>> fetchAllTrend(BuildContext context, String mediaType,
      String timeWindow, int page) async {
    Uri uri =
        Uri.parse('$url/$mediaType/$timeWindow?api_key=$apiKey&page=$page');
    try {
      http.Response res = await http.get(
        uri,
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      if (res.statusCode == 200){
        return compute(parseData, res.body);
      } else {
        throw Exception(res.reasonPhrase);
      }
    } catch (e) {
      throw Exception(e);
    } 
  }
}
