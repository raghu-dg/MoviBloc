import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movi/data/model/movies_model.dart';
import 'package:movi/data/repositories/tmdb_repository_impl.dart';
import 'package:movi/domain/entities/failures.dart';
import 'package:movi/domain/entities/search_result.dart';
import 'package:movi/domain/repositories/tmdb_repository.dart';
import 'package:movi/util/network_error.dart';

import '../../util/json_reader.dart';
import '../../util/test_helper.mocks.dart';

main() {
  late MockTmdbDataSource dataSource;
  late TmdbRepository repository;

  setUp(() {
    dataSource = MockTmdbDataSource();
    repository = TmdbRepositoryImpl(dataSource: dataSource);
  });

  group('Search movie', () {
    test('Should return a result of list of movies when searchMovie call is successful', () async {
      final tmdbResult =
          MovieList.fromJson(json.decode(readJson("test_data/movies.json")));
      when(dataSource.searchMovie("query"))
          .thenAnswer((_) async => tmdbResult.results);
      final movieResult = await repository.searchMovies("query");
      verify(dataSource.searchMovie("query"));
      expect(movieResult.getSuccess(), isA<List<SearchResult>>());
    });

    test('Should return a Failure of type BackEndFailure when the server returns exception', () async {
      when(dataSource.searchMovie("query")).thenThrow(ServerException("Internal Server Error"));
      final movieResult = await repository.searchMovies("query");
      verify(dataSource.searchMovie("query"));
      expect(movieResult.getError(), isA<BackEndFailure>());
    });

    test('Should return a Failure of type ConnectionFailure when the network is not avaible', () async {
      when(dataSource.searchMovie("query")).thenThrow(const SocketException(""));
      final movieResult = await repository.searchMovies("query");
      verify(dataSource.searchMovie("query"));
      expect(movieResult.getError(), isA<ConnectionFailure>());
    });
  });
}
