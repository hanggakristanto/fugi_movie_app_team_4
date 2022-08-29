import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/model/multi_search_result.dart';
import '../../data/repositories/multi_search_repository.dart';

part 'multi_search_state.dart';

class MultiSearchCubit extends Cubit<MultiSearchState> {
  final MultiSearchRepository repository;
  MultiSearchCubit(this.repository) : super(MultiSearchInitial());

  String language = '';
  String query = '';
  int page = 1;
  String includeAdult = '';
  String region = '';

  void loadMultiSearch() {
    if (state is MultiSearchLoading) return;

    final currentState = state;

    var oldMultiSearch = <MultiSearchResult>[];

    if (currentState is MultiSearchLoaded) {
      oldMultiSearch = currentState.multiSearch;
    }

    emit(MultiSearchLoading(oldMultiSearch, isFirstFetch: page == 1));

    repository
        .fetchMovieTrend(language, query, page, includeAdult, region)
        .then((value) {
          page++;
          // log("cubit");
          // log("page = $page");
          // log("newMovieTrend length = ${newMovieTrend.length}");
          final multiSearch = (state as MultiSearchLoading).oldMultiSearch;
          // log("movieTrend befoore length = ${movieTrend.length}");
          multiSearch.addAll(value);
          // log("movieTrend length = ${movieTrend.length}");
          emit(MultiSearchLoaded(multiSearch));
        });
  }
}
