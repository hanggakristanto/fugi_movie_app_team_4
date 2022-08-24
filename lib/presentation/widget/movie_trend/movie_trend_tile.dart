import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fugi_movie_app_team_4/data/model/movie_trend_result.dart';

import '../../../constant/global_variable.dart';

Widget movieTrendTile(MovieTrendResult movieTrend, BuildContext context) {
  String? title =
      (movieTrend.title != null) ? movieTrend.title : movieTrend.name;
  return InkWell(
    onTap: () {
      log("id = ${movieTrend.id}");
      log('${GlobalVariable.urlImage}${movieTrend.backdrop_path}');
    },
    child: Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.network(
                '${GlobalVariable.urlImage}${movieTrend.backdrop_path}',
              ),
              Text(
                "$title",
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
