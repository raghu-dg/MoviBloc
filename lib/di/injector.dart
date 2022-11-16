import 'package:get_it/get_it.dart';
import 'package:movi/data/datasource/tmdb_data_source.dart';
import 'package:movi/data/repositories/tmdb_repository_impl.dart';
import 'package:movi/domain/repositories/tmdb_repository.dart';
import 'package:http/http.dart' as http;
import 'package:movi/domain/usecases/search_movie_usecase.dart';
import 'package:movi/view/state_manager/search_bloc.dart';
import 'injector.dart' as injector;

final locator = GetIt.instance;

void initialize() {
  locator.registerFactory(() => SearchBloc(locator()));
  locator.registerLazySingleton(() => SearchMovieUseCase(locator()));
  locator.registerLazySingleton<TmdbRepository>(
      () => TmdbRepositoryImpl(dataSource: locator()));
  locator.registerLazySingleton<TmdbDataSource>(
      () => TmdbDataSourceImpl(client: locator()));
  locator.registerLazySingleton(() => http.Client());
}
