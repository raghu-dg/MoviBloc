import 'package:movi/domain/entities/search_result.dart';
import 'package:movi/generated/json/base/json_field.dart';
import 'package:movi/generated/json/movies_model.g.dart';
import 'dart:convert';

@JsonSerializable()
class MovieList {

	late int page;
	late List<Movie> results;
	@JSONField(name: "total_pages")
	late int totalPages;
	@JSONField(name: "total_results")
	late int totalResults;
  
  MovieList();

  factory MovieList.fromJson(Map<String, dynamic> json) => $MovieListFromJson(json);

  Map<String, dynamic> toJson() => $MovieListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class Movie {

	late bool adult;
	@JSONField(name: "backdrop_path")
	late String backdropPath;
	@JSONField(name: "genre_ids")
	late List<int> genreIds;
	late int id;
	@JSONField(name: "original_language")
	late String originalLanguage;
	@JSONField(name: "original_title")
	late String originalTitle;
	late String overview;
	late double popularity;
	@JSONField(name: "poster_path")
	late String posterPath;
	@JSONField(name: "release_date")
	late String releaseDate;
	late String title;
	late bool video;
	@JSONField(name: "vote_average")
	late double voteAverage;
	@JSONField(name: "vote_count")
	late int voteCount;
  
  Movie();

  factory Movie.fromJson(Map<String, dynamic> json) => $MovieFromJson(json);
  Map<String, dynamic> toJson() => $MovieToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

	SearchResult toEntity() => SearchResult(title, "", originalLanguage);
}