import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:movi/data/model/movies_model.dart';
import 'package:movi/util/network_error.dart';
import 'package:multiple_result/multiple_result.dart';
import '../../util/tmdb_url.dart';

abstract class TmdbDataSource {
  Future<List<Movie>> searchMovie(String query);
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
}
