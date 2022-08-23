import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fugi_movie_app_team_4/data/model/movie_trend.dart';
import 'package:fugi_movie_app_team_4/data/model/movie_trend_result.dart';

Widget movieTrendTile(MovieTrendResult movieTrend, BuildContext context) {
  log("movieTrendTile");
  log(movieTrend.toString());
    return Container(
      // width: MediaQuery.of(context).size.width,
      // margin: const EdgeInsets.all(10.0),
      // child: Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Text(
      //       "${movieTrend.results.}. ${movieTrend.title}",
      //       style: TextStyle(
      //           fontSize: 18.0,
      //           color: Colors.black,
      //           fontWeight: FontWeight.bold),
      //     ),
      //     SizedBox(height: 10.0),
      //     Text(movieTrend.body)
      //   ],
      // ),
    );
  }