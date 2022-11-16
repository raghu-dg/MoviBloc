import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movi/domain/usecases/search_movie_usecase.dart';
import 'package:movi/view/state_manager/search_state.dart';
import 'package:movi/view/state_manager/search_view_events.dart';

class SearchBloc extends Bloc<SearchViewEvent, SearchState> {
  final SearchMovieUseCase _searchMovieUseCase;

  SearchBloc(this._searchMovieUseCase) : super(SearchEmptyState()) {
    on<SearchMovieEvent>((event, state) async {
      emit(SearchLoading());

      final result = await _searchMovieUseCase.execute(event.query);
      result.when((error) {
        emit(SearchError(error.message));
      }, (results) {
        emit(SearchContent(results));
      });
    });
  }
}
