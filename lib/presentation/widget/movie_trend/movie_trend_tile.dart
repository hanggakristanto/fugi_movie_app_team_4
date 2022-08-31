import 'package:flutter/material.dart';

import '../../../constant/global_variable.dart';
import '../../../data/model/movie_trend_result.dart';

Widget movieTrendTile(
  BuildContext context,
  MovieTrendResult data,
  double height,
  double width,
) {
  String? title =
      (data.title != null) ? data.title : data.name;
  String url = 
    (data.poster_path != null)
    ? '${GlobalVariable.urlImage}${data.poster_path}'
    : '${GlobalVariable.urlNoImage}';
  return InkWell(
    onTap: () {
      // TODO: add function later
    },
    child: Container(
      height: (MediaQuery.of(context).size.height / 3.9),
      width: (MediaQuery.of(context).size.width / 4),
      margin: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: FadeInImage(
                placeholder: AssetImage(
                    "assets/images/cupertino_activity_indicator.gif"),
                fit: BoxFit.cover,
                image: NetworkImage(
                  url,
                ),
                fadeInDuration: const Duration(milliseconds: 5),
                fadeOutDuration: const Duration(milliseconds: 5),
              ).image,
              fit: BoxFit.cover)),
      child: (data.poster_path == null)
          ? Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "$title",
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          : Container(),
    ),
  );
}
