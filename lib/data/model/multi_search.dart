import 'package:freezed_annotation/freezed_annotation.dart';

import 'multi_search_result.dart';

part 'multi_search.freezed.dart';
part 'multi_search.g.dart';

@freezed
abstract class MultiSearch with _$MultiSearch {
    const factory MultiSearch({
        required int page,
        required List<MultiSearchResult> results,
        required int total_pages,
        required int total_results,
    }) = _MultiSearch;

    factory MultiSearch.fromJson(Map<String, dynamic> json) => _$MultiSearchFromJson(json);
}


