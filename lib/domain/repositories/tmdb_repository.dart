
import 'package:movi/data/model/movies_model.dart';
import 'package:multiple_result/multiple_result.dart';
import '../entities/failures.dart';
import '../entities/search_result.dart';

abstract class TmdbRepository{
  Future<Result<Failure, List<SearchResult>>> searchMovies(String query);
}