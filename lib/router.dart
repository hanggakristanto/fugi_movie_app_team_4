import 'package:flutter/material.dart';
import 'package:fugi_movie_app_team_4/presentation/screens/movie_trend_screen.dart';
import 'package:fugi_movie_app_team_4/presentation/screens/search_screen.dart';

import 'presentation/screens/home_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case HomeScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const HomeScreen(),
      );
    case MovieTrendScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => MovieTrendScreen(),
      );
    case SearchScreen.routeName:
      var args = routeSettings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (_) => SearchScreen(
          arg: args,
          // reStart: restart,
        ),
      );
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Congratulation you had done something impossible'),
          ),
        ),
      );
  }
}