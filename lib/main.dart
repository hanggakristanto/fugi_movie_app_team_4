import 'package:flutter/material.dart';
import 'package:fugi_movie_app_team_4/page/select_branch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SelectBranch(),
    );
  }
}
