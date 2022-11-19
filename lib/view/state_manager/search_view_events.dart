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

class UpdateSearchFilterEvent extends SearchViewEvent {
  final String selectedFilter;

  const UpdateSearchFilterEvent(this.selectedFilter);

  @override
  List<Object?> get props => [selectedFilter];
}

class ResetSearchEvent extends SearchViewEvent {
  const ResetSearchEvent();

  @override
  List<Object?> get props => [];
}
