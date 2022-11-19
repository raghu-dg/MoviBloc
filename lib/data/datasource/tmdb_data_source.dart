import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movi/data/model/movies_model.dart';
import 'package:movi/data/model/persons_model.dart';
import 'package:movi/data/model/shows_model.dart';
import 'package:movi/util/network_error.dart';
import '../../util/tmdb_url.dart';

abstract class TmdbDataSource {
  Future<List<Movie>> searchMovie(String query);

  Future<List<Show>> searchShow(String query);

  Future<List<Person>> searchPerson(String query);
}

class TmdbDataSourceImpl extends TmdbDataSource {
  final http.Client client;

  TmdbDataSourceImpl({required this.client});

  @override
  Future<List<Movie>> searchMovie(String query) async {
    final response = await client.get(Uri.parse(TmdbUrl.searchMovie(query)));
    if (response.statusCode == 200) {
      return MovieList.fromJson(json.decode(response.body)).results;
    } else {
      throw ServerException(response.reasonPhrase);
    }
  }

  @override
  Future<List<Show>> searchShow(String query) async {
    final response = await client.get(Uri.parse(TmdbUrl.searchShow(query)));
    if (response.statusCode == 200) {
      return ShowsList.fromJson(json.decode(response.body)).results;
    } else {
      throw ServerException(response.reasonPhrase);
    }
  }

  @override
  Future<List<Person>> searchPerson(String query) async {
    final response = await client.get(Uri.parse(TmdbUrl.searchPerson(query)));
    if (response.statusCode == 200) {
      return PersonsList.fromJson(json.decode(response.body)).results;
    } else {
      throw ServerException(response.reasonPhrase);
    }
  }
}
