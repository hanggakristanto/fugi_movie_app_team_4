import 'package:flutter/cupertino.dart';
import 'package:fugi_movie_app_team_4/provider/service_class.dart';

import 'data_model.dart';

class DataClass extends ChangeNotifier {
  DataModel? post;
  bool loading = false;

  getPostData() async {
    loading = true;
    post = (await getSinglePostData())!;
    loading = false;

    notifyListeners();
  }
}
