import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../../../constant/global_variable.dart';
import '../../../model/movie_trend.dart';

class MovieTrendServices {
  Future<List<MovieTrend>> fetchAllTrend(BuildContext context) async {
    List<MovieTrend> movieTrend = [];
    Uri uri = Uri.parse(url);
    try {
      await http.get(uri);
    } catch (e) {
      log(e.toString());
    } finally {}

    return movieTrend;
  }
}
