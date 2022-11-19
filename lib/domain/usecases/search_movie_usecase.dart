import 'package:movi/domain/entities/search_result.dart';
import 'package:movi/domain/repositories/tmdb_repository.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../util/search_type.dart';
import '../entities/failures.dart';

class SearchMovieUseCase {
  final TmdbRepository repository;

  SearchMovieUseCase(this.repository);

  Future<Result<Failure, List<SearchResult>>> execute(String query, SearchType type) {
    return repository.search(query, type);
  }
}
