import 'package:movi/generated/json/base/json_convert_content.dart';
import 'package:movi/data/model/persons_model.dart';

PersonsList $PersonsModelEntityFromJson(Map<String, dynamic> json) {
	final PersonsList personsModelEntity = PersonsList();
	final int? page = jsonConvert.convert<int>(json['page']);
	if (page != null) {
		personsModelEntity.page = page;
	}
	final List<Person>? results = jsonConvert.convertListNotNull<Person>(json['results']);
	if (results != null) {
		personsModelEntity.results = results;
	}
	final int? totalPages = jsonConvert.convert<int>(json['total_pages']);
	if (totalPages != null) {
		personsModelEntity.totalPages = totalPages;
	}
	final int? totalResults = jsonConvert.convert<int>(json['total_results']);
	if (totalResults != null) {
		personsModelEntity.totalResults = totalResults;
	}
	return personsModelEntity;
}

Map<String, dynamic> $PersonsModelEntityToJson(PersonsList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['page'] = entity.page;
	data['results'] =  entity.results.map((v) => v.toJson()).toList();
	data['total_pages'] = entity.totalPages;
	data['total_results'] = entity.totalResults;
	return data;
}

Person $PersonsModelResultsFromJson(Map<String, dynamic> json) {
	final Person personsModelResults = Person();
	final bool? adult = jsonConvert.convert<bool>(json['adult']);
	if (adult != null) {
		personsModelResults.adult = adult;
	}
	final int? gender = jsonConvert.convert<int>(json['gender']);
	if (gender != null) {
		personsModelResults.gender = gender;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		personsModelResults.id = id;
	}
	final List<PersonsModelResultsKnownFor>? knownFor = jsonConvert.convertListNotNull<PersonsModelResultsKnownFor>(json['known_for']);
	if (knownFor != null) {
		personsModelResults.knownFor = knownFor;
	}
	final String? knownForDepartment = jsonConvert.convert<String>(json['known_for_department']);
	if (knownForDepartment != null) {
		personsModelResults.knownForDepartment = knownForDepartment;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		personsModelResults.name = name;
	}
	final double? popularity = jsonConvert.convert<double>(json['popularity']);
	if (popularity != null) {
		personsModelResults.popularity = popularity;
	}
	final String? profilePath = jsonConvert.convert<String>(json['profile_path']);
	if (profilePath != null) {
		personsModelResults.profilePath = profilePath;
	}
	return personsModelResults;
}

Map<String, dynamic> $PersonsModelResultsToJson(Person entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['adult'] = entity.adult;
	data['gender'] = entity.gender;
	data['id'] = entity.id;
	data['known_for'] =  entity.knownFor.map((v) => v.toJson()).toList();
	data['known_for_department'] = entity.knownForDepartment;
	data['name'] = entity.name;
	data['popularity'] = entity.popularity;
	data['profile_path'] = entity.profilePath;
	return data;
}

PersonsModelResultsKnownFor $PersonsModelResultsKnownForFromJson(Map<String, dynamic> json) {
	final PersonsModelResultsKnownFor personsModelResultsKnownFor = PersonsModelResultsKnownFor();
	final bool? adult = jsonConvert.convert<bool>(json['adult']);
	if (adult != null) {
		personsModelResultsKnownFor.adult = adult;
	}
	final List<dynamic>? genreIds = jsonConvert.convertListNotNull<dynamic>(json['genre_ids']);
	if (genreIds != null) {
		personsModelResultsKnownFor.genreIds = genreIds;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		personsModelResultsKnownFor.id = id;
	}
	final String? mediaType = jsonConvert.convert<String>(json['media_type']);
	if (mediaType != null) {
		personsModelResultsKnownFor.mediaType = mediaType;
	}
	final String? originalLanguage = jsonConvert.convert<String>(json['original_language']);
	if (originalLanguage != null) {
		personsModelResultsKnownFor.originalLanguage = originalLanguage;
	}
	final String? originalTitle = jsonConvert.convert<String>(json['original_title']);
	if (originalTitle != null) {
		personsModelResultsKnownFor.originalTitle = originalTitle;
	}
	final String? overview = jsonConvert.convert<String>(json['overview']);
	if (overview != null) {
		personsModelResultsKnownFor.overview = overview;
	}
	final String? posterPath = jsonConvert.convert<String>(json['poster_path']);
	if (posterPath != null) {
		personsModelResultsKnownFor.posterPath = posterPath;
	}
	final String? releaseDate = jsonConvert.convert<String>(json['release_date']);
	if (releaseDate != null) {
		personsModelResultsKnownFor.releaseDate = releaseDate;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		personsModelResultsKnownFor.title = title;
	}
	final bool? video = jsonConvert.convert<bool>(json['video']);
	if (video != null) {
		personsModelResultsKnownFor.video = video;
	}
	final int? voteAverage = jsonConvert.convert<int>(json['vote_average']);
	if (voteAverage != null) {
		personsModelResultsKnownFor.voteAverage = voteAverage;
	}
	final int? voteCount = jsonConvert.convert<int>(json['vote_count']);
	if (voteCount != null) {
		personsModelResultsKnownFor.voteCount = voteCount;
	}
	return personsModelResultsKnownFor;
}

Map<String, dynamic> $PersonsModelResultsKnownForToJson(PersonsModelResultsKnownFor entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['adult'] = entity.adult;
	data['genre_ids'] =  entity.genreIds;
	data['id'] = entity.id;
	data['media_type'] = entity.mediaType;
	data['original_language'] = entity.originalLanguage;
	data['original_title'] = entity.originalTitle;
	data['overview'] = entity.overview;
	data['poster_path'] = entity.posterPath;
	data['release_date'] = entity.releaseDate;
	data['title'] = entity.title;
	data['video'] = entity.video;
	data['vote_average'] = entity.voteAverage;
	data['vote_count'] = entity.voteCount;
	return data;
}