import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movi/data/datasource/tmdb_data_source.dart';
import 'package:movi/data/model/movies_model.dart';
import 'package:movi/data/model/persons_model.dart';
import 'package:movi/data/model/shows_model.dart';
import 'package:movi/util/network_error.dart';
import 'package:movi/util/tmdb_url.dart';
import 'package:http/http.dart' as http;

import '../../util/json_reader.dart';
import '../../util/test_helper.mocks.dart';

void main() {
  late MockHttpClient mockHttpClient;
  late TmdbDataSource dataSource;

  setUp(() {
    mockHttpClient = MockHttpClient();
    dataSource = TmdbDataSourceImpl(client: mockHttpClient);
  });

  group("search movie", () {
    test("should return a list movies when the response code is 200", () async {
      final tmdbResult =
          MovieList.fromJson(json.decode(readJson("test_data/movies.json")));
      when(
        mockHttpClient.get(Uri.parse(TmdbUrl.searchMovie("test"))),
      ).thenAnswer(
        (_) async =>
            http.Response(readJson('test_data/movies.json'), 200, headers: {
          HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
        }),
      );
      final result = await dataSource.searchMovie("test");
      expect(result.length, equals(tmdbResult.results.length));
    });

    test("should throw an error when the response code is not 200", () async {
      when(
        mockHttpClient.get(Uri.parse(TmdbUrl.searchMovie("test"))),
      ).thenAnswer((_) async => http.Response('Not found', 404));
      result() async => await dataSource.searchMovie("test");
      expect(result(), throwsA(isA<ServerException>()));
    });
  });

  group("Search Shows", () {
    test('should return a list of shows when the network response in 200',
        () async {
      final tmdbResult =
          ShowsList.fromJson(json.decode(readJson("test_data/shows.json")));

      when(mockHttpClient.get(Uri.parse(TmdbUrl.searchShow("query"))))
          .thenAnswer(
        (_) async =>
            http.Response(readJson('test_data/shows.json'), 200, headers: {
          HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
        }),
      );

      final result = await dataSource.searchShow("query");
      expect(result.length, equals(tmdbResult.results.length));
    });

    test(
        'Should throw a Server exception when the back end returns non 200 response code',
        () async {
      when(mockHttpClient.get(Uri.parse(TmdbUrl.searchShow("query"))))
          .thenAnswer(
        (_) async => http.Response("Internal Server Error", 500, headers: {
          HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
        }),
      );
      networkCall() async => await dataSource.searchShow("query");
      expect(networkCall(), throwsA(isA<ServerException>()));
    });
  });

  group("Search Persons", () {
    test('should return a list of person when the network response in 200', () async {
          final tmdbResult =
          PersonsList.fromJson(json.decode(readJson("test_data/persons.json")));

          when(mockHttpClient.get(Uri.parse(TmdbUrl.searchPerson("query"))))
              .thenAnswer(
                (_) async =>
                http.Response(readJson('test_data/persons.json'), 200, headers: {
                  HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
                }),
          );

          final result = await dataSource.searchPerson("query");
          expect(result.length, equals(tmdbResult.results.length));
        });

    test(
        'Should throw a Server exception when the back end returns non 200 response code',
            () async {
          when(mockHttpClient.get(Uri.parse(TmdbUrl.searchPerson("query"))))
              .thenAnswer(
                (_) async => http.Response("Internal Server Error", 500, headers: {
              HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
            }),
          );
          networkCall() async => await dataSource.searchPerson("query");
          expect(networkCall(), throwsA(isA<ServerException>()));
        });
  });
}
