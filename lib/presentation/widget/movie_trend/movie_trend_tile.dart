import 'package:flutter/material.dart';
import 'package:fugi_movie_app_team_4/data/model/movie_trend_result.dart';
import 'package:fugi_movie_app_team_4/presentation/widget/common/image_loading.dart';

import '../../../constant/global_variable.dart';

Widget movieTrendTile(
  BuildContext context,
  MovieTrendResult movieTrend,
  double height,
  double width,
) {
  String? title =
      (movieTrend.title != null) ? movieTrend.title : movieTrend.name;
  return InkWell(
    onTap: () {
      // TODO: add function later
    },
    child: Container(
      height: (MediaQuery.of(context).size.height / 3.9),
      width: (MediaQuery.of(context).size.width / 4),
      margin: const EdgeInsets.all(4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Center(
                child: ImageLoading(
                  url: '${GlobalVariable.urlImage}${movieTrend.poster_path}',
                ),
                // '${GlobalVariable.urlImage}${movieTrend.backdrop_path}',
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
