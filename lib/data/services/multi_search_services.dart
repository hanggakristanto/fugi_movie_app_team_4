import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../../constant/api_key.dart';
import '../../constant/global_variable.dart';

class MultiSearchServices{
  Future<List<dynamic>> fetchQuery(
    String language,
    String query,
    int page,
    String includeAdult,
    String region,
  ) async {
    log('${GlobalVariable.url}/search/multi?api_key=${ApiKey.APIKEY}&page=$page&language=${language}&query=${query}&include_adult=${includeAdult}');
    Uri uri = Uri.parse(
        '${GlobalVariable.url}/search/multi?api_key=${ApiKey.APIKEY}&page=$page&language=${language}&query=${query}&include_adult=${includeAdult}');
      try {
        final http.Response res = await http.get(
        uri,
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      // log('MultiSearchServices');
      // log(res.body);
      var data = jsonDecode(res.body)['results'];
      return data as List<dynamic>;
      } catch (e){
        throw Exception(e);
      }
  }
}