import 'package:movi/generated/json/base/json_convert_content.dart';
import 'package:movi/data/model/shows_model.dart';
import '../../domain/entities/search_result.dart';


ShowsList $ShowsListFromJson(Map<String, dynamic> json) {
	final ShowsList showsList = ShowsList();
	final int? page = jsonConvert.convert<int>(json['page']);
	if (page != null) {
		showsList.page = page;
	}
	final List<Show>? results = jsonConvert.convertListNotNull<Show>(json['results']);
	if (results != null) {
		showsList.results = results;
	}
	final int? totalPages = jsonConvert.convert<int>(json['total_pages']);
	if (totalPages != null) {
		showsList.totalPages = totalPages;
	}
	final int? totalResults = jsonConvert.convert<int>(json['total_results']);
	if (totalResults != null) {
		showsList.totalResults = totalResults;
	}
	return showsList;
}

Map<String, dynamic> $ShowsListToJson(ShowsList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['page'] = entity.page;
	data['results'] =  entity.results.map((v) => v.toJson()).toList();
	data['total_pages'] = entity.totalPages;
	data['total_results'] = entity.totalResults;
	return data;
}

Show $ShowFromJson(Map<String, dynamic> json) {
	final Show show = Show();
	final String? backdropPath = jsonConvert.convert<String>(json['backdrop_path']);
	if (backdropPath != null) {
		show.backdropPath = backdropPath;
	}
	final String? firstAirDate = jsonConvert.convert<String>(json['first_air_date']);
	if (firstAirDate != null) {
		show.firstAirDate = firstAirDate;
	}
	final List<int>? genreIds = jsonConvert.convertListNotNull<int>(json['genre_ids']);
	if (genreIds != null) {
		show.genreIds = genreIds;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		show.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		show.name = name;
	}
	final List<String>? originCountry = jsonConvert.convertListNotNull<String>(json['origin_country']);
	if (originCountry != null) {
		show.originCountry = originCountry;
	}
	final String? originalLanguage = jsonConvert.convert<String>(json['original_language']);
	if (originalLanguage != null) {
		show.originalLanguage = originalLanguage;
	}
	final String? originalName = jsonConvert.convert<String>(json['original_name']);
	if (originalName != null) {
		show.originalName = originalName;
	}
	final String? overview = jsonConvert.convert<String>(json['overview']);
	if (overview != null) {
		show.overview = overview;
	}
	final double? popularity = jsonConvert.convert<double>(json['popularity']);
	if (popularity != null) {
		show.popularity = popularity;
	}
	final String? posterPath = jsonConvert.convert<String>(json['poster_path']);
	if (posterPath != null) {
		show.posterPath = posterPath;
	}
	final double? voteAverage = jsonConvert.convert<double>(json['vote_average']);
	if (voteAverage != null) {
		show.voteAverage = voteAverage;
	}
	final int? voteCount = jsonConvert.convert<int>(json['vote_count']);
	if (voteCount != null) {
		show.voteCount = voteCount;
	}
	return show;
}

Map<String, dynamic> $ShowToJson(Show entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['backdrop_path'] = entity.backdropPath;
	data['first_air_date'] = entity.firstAirDate;
	data['genre_ids'] =  entity.genreIds;
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['origin_country'] =  entity.originCountry;
	data['original_language'] = entity.originalLanguage;
	data['original_name'] = entity.originalName;
	data['overview'] = entity.overview;
	data['popularity'] = entity.popularity;
	data['poster_path'] = entity.posterPath;
	data['vote_average'] = entity.voteAverage;
	data['vote_count'] = entity.voteCount;
	return data;
}