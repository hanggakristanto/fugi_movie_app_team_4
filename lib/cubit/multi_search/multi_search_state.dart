part of 'multi_search_cubit.dart';

@immutable
abstract class MultiSearchState {}

class MultiSearchInitial extends MultiSearchState {}

class MultiSearchLoaded extends MultiSearchState {
  final List<MultiSearchResult> multiSearch;

  MultiSearchLoaded(this.multiSearch);
}

class MultiSearchLoading extends MultiSearchState {
  final List<MultiSearchResult> oldMultiSearch;
  final bool isFirstFetch;

  MultiSearchLoading(this.oldMultiSearch, {this.isFirstFetch=false});
}


