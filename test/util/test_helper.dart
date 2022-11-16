import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:movi/data/datasource/tmdb_data_source.dart';
import 'package:movi/domain/repositories/tmdb_repository.dart';
import 'package:movi/domain/usecases/search_movie_usecase.dart';

@GenerateMocks([
  TmdbDataSource,
  TmdbRepository,
  SearchMovieUseCase,
], customMocks: [
  MockSpec<http.Client>(as: #MockHttpClient)
])
void main() {}
