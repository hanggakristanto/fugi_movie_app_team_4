import '../model/multi_search_result.dart';
import '../services/multi_search_services.dart';

class MultiSearchRepository {
  final MultiSearchServices service;

  MultiSearchRepository(this.service);

  Future<List<MultiSearchResult>> fetchMovieTrend(
    String language,
    String query,
    int page,
    String includeAdult,
    String region,
  ) async {
    final data =
        await service.fetchQuery(language, query, page, includeAdult, region);
    return data.map((e) => MultiSearchResult.fromJson(e)).toList();
  }
}
