import 'package:equatable/equatable.dart';

class SearchResult extends Equatable {
  final String title;
  final String imageUrl;
  final String language;

  const SearchResult(this.title, this.imageUrl, this.language);

  @override
  // TODO: implement props
  List<Object?> get props => [title, imageUrl, language];
}
