import 'dart:io';

import 'package:movi/data/datasource/tmdb_data_source.dart';
import 'package:movi/domain/entities/failures.dart';
import 'package:movi/domain/entities/search_result.dart';
import 'package:movi/domain/repositories/tmdb_repository.dart';
import 'package:movi/util/network_error.dart';
import 'package:movi/util/search_type.dart';
import 'package:multiple_result/multiple_result.dart';

class TmdbRepositoryImpl implements TmdbRepository {
  final TmdbDataSource dataSource;

  TmdbRepositoryImpl({required this.dataSource});

  @override
  Future<Result<Failure, List<SearchResult>>> search(
      String query, SearchType type) async {
    try {
      final List<SearchResult> result;
      switch (type) {
        case SearchType.movie:
          result = (await dataSource.searchMovie(query))
              .map((e) => e.toEntity())
              .toList();
          break;
        case SearchType.show:
          result = (await dataSource.searchShow(query))
              .map((e) => e.toEntity())
              .toList();
          break;
        default:
          result = (await dataSource.searchPerson(query))
              .map((e) => e.toEntity())
              .toList();
      }
      return Success(result);
    } on ServerException catch (e) {
      return Error(BackEndFailure(e.message));
    } on SocketException {
      return const Error(ConnectionFailure('Network Not Found'));
    }
  }
}
