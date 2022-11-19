import 'package:multiple_result/multiple_result.dart';
import '../../util/search_type.dart';
import '../entities/failures.dart';
import '../entities/search_result.dart';

abstract class TmdbRepository{
  Future<Result<Failure, List<SearchResult>>> search(String query, SearchType type);
}