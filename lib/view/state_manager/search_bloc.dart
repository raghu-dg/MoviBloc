import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movi/domain/usecases/search_movie_usecase.dart';
import 'package:movi/util/search_type.dart';
import 'package:movi/view/state_manager/search_state.dart';
import 'package:movi/view/state_manager/search_view_events.dart';

class SearchBloc extends Bloc<SearchViewEvent, SearchState> {
  final SearchMovieUseCase _searchMovieUseCase;
  String _cachedQuery = "";
  String _selectedFilter = "Movie";

  SearchBloc(this._searchMovieUseCase) : super(SearchEmptyState()) {
    on<SearchMovieEvent>((event, state) async {
      emit(SearchLoading());
      _cachedQuery = event.query;
      final result = await _searchMovieUseCase.execute(
          _cachedQuery, SearchType.get(_selectedFilter));
      result.when((error) {
        emit(SearchError(error.message));
      }, (results) {
        emit(SearchContent(results));
      });
    });
    on<UpdateSearchFilterEvent>((event, state) async {
      if (_cachedQuery.isNotEmpty) {
        emit(SearchLoading());
        _selectedFilter = event.selectedFilter;
        final result = await _searchMovieUseCase.execute(
            _cachedQuery, SearchType.get(_selectedFilter));
        result.when((error) {
          emit(SearchError(error.message));
        }, (results) {
          emit(SearchContent(results));
        });
      }
    });
    on<ResetSearchEvent>((event, state) async {
      _cachedQuery = "";
      emit(SearchEmptyState());
    });
  }
}
