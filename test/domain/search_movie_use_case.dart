import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movi/data/model/movies_model.dart';
import 'package:movi/data/model/shows_model.dart';
import 'package:movi/domain/entities/failures.dart';
import 'package:movi/domain/entities/search_result.dart';
import 'package:movi/domain/usecases/search_movie_usecase.dart';
import 'package:movi/util/search_type.dart';
import 'package:multiple_result/multiple_result.dart';
import '../util/json_reader.dart';
import '../util/test_helper.mocks.dart';


main() {
  late MockTmdbRepository repository;
  late SearchMovieUseCase useCase;

  setUp(() {
    repository = MockTmdbRepository();
    useCase = SearchMovieUseCase(repository);
  });

  group('Search movie/show/person', () {
    test('Should return a result of list of SearchResult when search call is successful', () async {
      final searchResults =
      MovieList.fromJson(json.decode(readJson("test_data/movies.json"))).results.map((e) => e.toEntity()).toList();
      when(repository.search("query", SearchType.movie))
          .thenAnswer((_) async => Success(searchResults));
      final searchResult = await useCase.execute("query", SearchType.movie);
      verify(repository.search("query", SearchType.movie));
      expect(searchResult.getSuccess(), isA<List<SearchResult>>());
    });

    test('Should return a result of list of SearchResult when search call is successful', () async {
      final searchResults =
      ShowsList.fromJson(json.decode(readJson("test_data/shows.json"))).results.map((e) => e.toEntity()).toList();
      when(repository.search("query", SearchType.show))
          .thenAnswer((_) async => Success(searchResults));
      final searchResult = await useCase.execute("query", SearchType.show);
      verify(repository.search("query", SearchType.show));
      expect(searchResult.getSuccess(), isA<List<SearchResult>>());
    });

    test('Should return a result of list of SearchResult when search call is successful', () async {
      final searchResults =
      ShowsList.fromJson(json.decode(readJson("test_data/shows.json"))).results.map((e) => e.toEntity()).toList();
      when(repository.search("query", SearchType.person))
          .thenAnswer((_) async => Success(searchResults));
      final searchResult = await useCase.execute("query", SearchType.person);
      verify(repository.search("query", SearchType.person));
      expect(searchResult.getSuccess(), isA<List<SearchResult>>());
    });

    test('Should return a Failure of type BackEndFailure when the server returns exception', () async {
      when(repository.search("query", SearchType.movie)).thenAnswer((_) async => const Error(BackEndFailure('Internal error')));
      final searchResult = await useCase.execute("query", SearchType.movie);
      verify(repository.search("query", SearchType.movie));
      expect(searchResult.getError(), isA<BackEndFailure>());
    });

    test('Should return a Failure of type ConnectionFailure when the network is not available', () async {
      when(repository.search("query", SearchType.movie)).thenAnswer((_) async =>  const Error(ConnectionFailure('Internal error')));
      final movieResult = await useCase.execute("query", SearchType.movie);
      verify(repository.search("query", SearchType.movie));
      expect(movieResult.getError(), isA<ConnectionFailure>());
    });
  });
}
