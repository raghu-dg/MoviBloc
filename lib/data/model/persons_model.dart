import 'package:movi/generated/json/base/json_field.dart';
import 'package:movi/generated/json/persons_model_entity.g.dart';
import 'dart:convert';

import '../../domain/entities/search_result.dart';

@JsonSerializable()
class PersonsList {
  late int page;
  late List<Person> results;
  @JSONField(name: "total_pages")
  late int totalPages;
  @JSONField(name: "total_results")
  late int totalResults;

  PersonsList();

  factory PersonsList.fromJson(Map<String, dynamic> json) =>
      $PersonsModelEntityFromJson(json);

  Map<String, dynamic> toJson() => $PersonsModelEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class Person {
  late bool adult;
  late int gender;
  late int id;
  @JSONField(name: "known_for")
  late List<PersonsModelResultsKnownFor> knownFor;
  @JSONField(name: "known_for_department")
  late String knownForDepartment;
  late String name;
  late double popularity;
  @JSONField(name: "profile_path")
  late String profilePath;

  Person();

  factory Person.fromJson(Map<String, dynamic> json) =>
      $PersonsModelResultsFromJson(json);

  Map<String, dynamic> toJson() => $PersonsModelResultsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  SearchResult toEntity() =>
      SearchResult(name, "", "");
}

@JsonSerializable()
class PersonsModelResultsKnownFor {
  late bool adult;
  @JSONField(name: "genre_ids")
  late List<dynamic> genreIds;
  late int id;
  @JSONField(name: "media_type")
  late String mediaType;
  @JSONField(name: "original_language")
  late String originalLanguage;
  @JSONField(name: "original_title")
  late String originalTitle;
  late String overview;
  @JSONField(name: "poster_path")
  late String posterPath;
  @JSONField(name: "release_date")
  late String releaseDate;
  late String title;
  late bool video;
  @JSONField(name: "vote_average")
  late int voteAverage;
  @JSONField(name: "vote_count")
  late int voteCount;

  PersonsModelResultsKnownFor();

  factory PersonsModelResultsKnownFor.fromJson(Map<String, dynamic> json) =>
      $PersonsModelResultsKnownForFromJson(json);

  Map<String, dynamic> toJson() => $PersonsModelResultsKnownForToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
