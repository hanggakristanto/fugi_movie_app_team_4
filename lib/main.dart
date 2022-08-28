import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit/movie_trend_cubit.dart';
import 'data/repositories/movie_trend_repository.dart';
import 'data/services/movie_trend_services.dart';
import 'presentation/screens/home_screen.dart';
import 'router.dart';

void main() {
  runApp(MyApp(
    repository: MovieTrendRepository(
      MovieTrendServices(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  final MovieTrendRepository repository;

  const MyApp({
    Key? key,
    required this.repository,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MovieTrendCubit(repository),
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
