import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'data_class.dart';
import 'data_model.dart';

Future<DataModel?> getSinglePostData() async {
  DataModel? result;
  try {
    final response = await http.get(
      Uri.parse(
          "https://api.themoviedb.org/3/movie/latest?api_key=c93f3d3d37caf9feda72e8c1f0dec1d3"),
      headers: {
        HttpHeaders.contentTypeHeader: "application/json",
      },
    );
    // print(response.body);
    if (response.statusCode == 200) {
      final item = json.decode(response.body);
      result = DataModel.fromJson(item);
    } else {
      print("error");
    }
  } catch (e) {
    // log(e.toString());
  }
  return result;
}
