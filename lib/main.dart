import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fugi_movie_app_team_4/data/repositories/multi_search_repository.dart';
import 'package:fugi_movie_app_team_4/data/services/multi_search_services.dart';

import 'cubit/cubit/movie_trend_cubit.dart';
import 'cubit/multi_search/multi_search_cubit.dart';
import 'data/repositories/movie_trend_repository.dart';
import 'data/services/movie_trend_services.dart';
import 'presentation/screens/home_screen.dart';
import 'router.dart';

void main() {
  runApp(
    MyApp(
      repository: MovieTrendRepository(
        MovieTrendServices(),
      ),
      multiSearchRepository: MultiSearchRepository(
        MultiSearchServices(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  final MovieTrendRepository repository;
  final MultiSearchRepository multiSearchRepository;

  const MyApp({
    Key? key,
    required this.repository,
    required this.multiSearchRepository,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MovieTrendCubit(repository),
        ),
        BlocProvider(
          create: (context) => MultiSearchCubit(multiSearchRepository),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: (settings) => generateRoute(settings),
        home: HomeScreen(),
        // home: HomePage(),
      ),
    );
  }
}
