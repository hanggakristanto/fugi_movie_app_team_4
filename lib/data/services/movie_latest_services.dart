import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../constant/api_key.dart';
import '../../../constant/global_variable.dart';

class MovieLatestServices {
  Future<Map<String, dynamic>> fetchLatest(String language) async {
    Uri uri = Uri.parse(
        '${GlobalVariable.url}/movie/latest?api_key=${ApiKey.APIKEY}&language=$language');
    try {
      final http.Response res = await http.get(
        uri,
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      // log("response");
      // log(res.body);
      var data = jsonDecode(res.body);
      // var data = jsonDecode(res.body) as Map<String, dynamic>;
      // log("data");
      // log(data.toString());
      // log("data2");
      return data;
      // return jata;
    } catch (e) {
      throw Exception(e);
    }
  }
}
