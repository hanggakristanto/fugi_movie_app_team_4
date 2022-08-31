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
  String? title =
      (data.title != null) ? data.title : data.name;
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
                child: (data.poster_path != null)
                ? ImageLoading(
                    url: '${GlobalVariable.urlImage}${data.poster_path}',
                  )
                : const Text('No Image Available', style: TextStyle(color: Colors.white),)
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
