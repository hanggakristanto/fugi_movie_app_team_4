import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fugi_movie_app_team_4/data/model/movie_trend.dart';
import 'package:fugi_movie_app_team_4/data/model/movie_trend_result.dart';

Widget movieTrendTile(MovieTrendResult movieTrend, BuildContext context) {
  log("movieTrendTile");
  String? title =
      (movieTrend.title != null) ? movieTrend.title : movieTrend.name;
  log(title.toString());

  // log(movieTrend.toString());
  return InkWell(
    onTap: () {
      log("id = ${movieTrend.id}");
    },
    child: Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$title",
            style: const TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),
          // Text(movieTrend.media_type)
        ],
      ),
    ),
  );
}
