import 'dart:developer';

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

  //mungkin disini perlu dirubah
  void loadMultiSearch(
    String language,
    String query,
    String includeAdult,
    String region,
    bool isNew,
  ) {
    log('cubit $query');
    if (state is MultiSearchLoading) return;

    final currentState = state;

    var oldMultiSearch = <MultiSearchResult>[];

    if (currentState is MultiSearchLoaded) {
      log('MultiSearchLoaded');
      oldMultiSearch = currentState.multiSearch;
    }

    emit(MultiSearchLoading(oldMultiSearch, isFirstFetch: page == 1));

    repository
        .fetchMovieTrend(language, query, page, includeAdult, region)
        .then((value) {
      page++;
      // log("cubit");
      // log("page = $page");
      final multiSearch;
      log('isNew = $isNew');
      if (isNew){
        multiSearch = value;
      } else {
        multiSearch = (state as MultiSearchLoading).oldMultiSearch;
        log('panjang multi = ${multiSearch.length}');
        multiSearch.addAll(value);
      }
      log('panjang multi final = ${multiSearch.length}');
      emit(MultiSearchLoaded(multiSearch));
    });
  }
}
