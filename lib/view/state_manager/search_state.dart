import 'package:equatable/equatable.dart';
import 'package:movi/domain/entities/search_result.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object?> get props => [];
}

class SearchEmptyState extends SearchState {}

class SearchLoading extends SearchState {}

class SearchError extends SearchState {
  final String message;

  const SearchError(this.message);

  @override
  List<Object?> get props => [message];
}

class SearchContent extends SearchState {
  final List<SearchResult> searchResult;

  const SearchContent(this.searchResult);

  @override
  List<Object?> get props => [searchResult];
}
