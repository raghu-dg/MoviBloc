import 'package:movi/generated/json/base/json_field.dart';
import 'package:movi/generated/json/shows_model.g.dart';
import 'dart:convert';

import '../../domain/entities/search_result.dart';

@JsonSerializable()
class ShowsList {
  late int page;
  late List<Show> results;
  @JSONField(name: "total_pages")
  late int totalPages;
  @JSONField(name: "total_results")
  late int totalResults;

  ShowsList();

  factory ShowsList.fromJson(Map<String, dynamic> json) =>
      $ShowsListFromJson(json);

  Map<String, dynamic> toJson() => $ShowsListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class Show {
  @JSONField(name: "backdrop_path")
  late String backdropPath;
  @JSONField(name: "first_air_date")
  late String firstAirDate;
  @JSONField(name: "genre_ids")
  late List<int> genreIds;
  late int id;
  late String name;
  @JSONField(name: "origin_country")
  late List<String> originCountry;
  @JSONField(name: "original_language")
  late String originalLanguage;
  @JSONField(name: "original_name")
  late String originalName;
  late String overview;
  late double popularity;
  @JSONField(name: "poster_path")
  late String posterPath;
  @JSONField(name: "vote_average")
  late double voteAverage;
  @JSONField(name: "vote_count")
  late int voteCount;

  Show();

  factory Show.fromJson(Map<String, dynamic> json) => $ShowFromJson(json);

  Map<String, dynamic> toJson() => $ShowToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  SearchResult toEntity() => SearchResult(name, "", originalLanguage);
}
