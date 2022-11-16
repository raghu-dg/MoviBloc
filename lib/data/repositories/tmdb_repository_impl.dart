import 'dart:io';

import 'package:movi/data/datasource/tmdb_data_source.dart';
import 'package:movi/data/model/movies_model.dart';
import 'package:movi/domain/entities/failures.dart';
import 'package:movi/domain/entities/search_result.dart';
import 'package:movi/domain/repositories/tmdb_repository.dart';
import 'package:movi/util/network_error.dart';
import 'package:multiple_result/multiple_result.dart';

class TmdbRepositoryImpl implements TmdbRepository {
  final TmdbDataSource dataSource;

  TmdbRepositoryImpl({required this.dataSource});

  @override
  Future<Result<Failure, List<SearchResult>>> searchMovies(String query) async {
    try {
      final result = await dataSource.searchMovie(query);
      return Success(result.map((e) => e.toEntity()).toList());
    } on ServerException catch (e) {
      return Error(BackEndFailure(e.message));
    } on SocketException {
      return const Error(ConnectionFailure('Network Not Found'));
    }
  }
}