import 'package:equatable/equatable.dart';

abstract class SearchViewEvent extends Equatable {
  const SearchViewEvent();

  @override
  List<Object?> get props => [];
}

class SearchMovieEvent extends SearchViewEvent {
  final String query;

  const SearchMovieEvent(this.query);

  @override
  List<Object?> get props => [query];
}

class SearchShowEvent extends SearchViewEvent {
  final String query;

  const SearchShowEvent(this.query);

  @override
  List<Object?> get props => [query];
}