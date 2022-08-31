import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/model/multi_search_result.dart';
import '../../data/repositories/multi_search_repository.dart';

part 'multi_search_state.dart';

class MultiSearchCubit extends Cubit<MultiSearchState> {
  final MultiSearchRepository repository;
  MultiSearchCubit(this.repository) : super(MultiSearchInitial());

  // String language = '';
  // String query = '';
  int page = 1;
  // String includeAdult = '';
  // String region = '';
  var oldMultiSearch = <MultiSearchResult>[];
  var multiSearch = <MultiSearchResult>[];

  void loadMultiSearch(
    String language,
    String query,
    String includeAdult,
    String region,
  ) {
    if (state is MultiSearchLoading) {
      return;
    };

    final currentState = state;

    if (currentState is MultiSearchLoaded) {
        oldMultiSearch = currentState.multiSearch;
    }

    emit(MultiSearchLoading(oldMultiSearch, isFirstFetch: page == 1));

    repository
        .fetchMovieTrend(language, query, page, includeAdult, region)
        .then((value) {
      page++;
        multiSearch = (state as MultiSearchLoading).oldMultiSearch;
        multiSearch.addAll(value);
      emit(MultiSearchLoaded(multiSearch));
    });
  }

  void resetMultiSearchLoaded () {
    page = 1;
    oldMultiSearch = <MultiSearchResult>[];
    multiSearch = <MultiSearchResult>[];
    emit(MultiSearchLoading(<MultiSearchResult>[], isFirstFetch: page == 1));
    emit(MultiSearchLoaded(<MultiSearchResult>[]));
  }
}