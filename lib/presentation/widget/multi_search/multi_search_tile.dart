import 'package:flutter/material.dart';

import '../../../constant/global_variable.dart';
import '../../../data/model/multi_search_result.dart';
import '../common/image_loading.dart';

Widget multiSearchTile(
  BuildContext context,
  MultiSearchResult data,
  double height,
  double width,
) {
  String? title = (data.title != null) ? data.title : data.name;
  String url = (data.poster_path != null)
      ? '${GlobalVariable.urlImage}${data.poster_path}'
      : GlobalVariable.urlNoImage;
  return InkWell(
    onTap: () {
      // TODO: add function later
    },
    child: Container(
      height: (MediaQuery.of(context).size.height / 3.9),
      width: (MediaQuery.of(context).size.width / 4),
      margin: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            url,
          ),
        ),
      ),
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
