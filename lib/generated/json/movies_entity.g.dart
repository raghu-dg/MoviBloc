import 'package:movi/generated/json/base/json_convert_content.dart';
import 'package:movi/data/model/movies_model.dart';

MovieList $MoviesEntityFromJson(Map<String, dynamic> json) {
	final MovieList moviesEntity = MovieList();
	final int? page = jsonConvert.convert<int>(json['page']);
	if (page != null) {
		moviesEntity.page = page;
	}
	final List<Movie>? results = jsonConvert.convertListNotNull<Movie>(json['results']);
	if (results != null) {
		moviesEntity.results = results;
	}
	final int? totalPages = jsonConvert.convert<int>(json['total_pages']);
	if (totalPages != null) {
		moviesEntity.totalPages = totalPages;
	}
	final int? totalResults = jsonConvert.convert<int>(json['total_results']);
	if (totalResults != null) {
		moviesEntity.totalResults = totalResults;
	}
	return moviesEntity;
}

Map<String, dynamic> $MoviesEntityToJson(MovieList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['page'] = entity.page;
	data['results'] =  entity.results.map((v) => v.toJson()).toList();
	data['total_pages'] = entity.totalPages;
	data['total_results'] = entity.totalResults;
	return data;
}

Movie $MoviesResultsFromJson(Map<String, dynamic> json) {
	final Movie moviesResults = Movie();
	final bool? adult = jsonConvert.convert<bool>(json['adult']);
	if (adult != null) {
		moviesResults.adult = adult;
	}
	final String? backdropPath = jsonConvert.convert<String>(json['backdrop_path']);
	if (backdropPath != null) {
		moviesResults.backdropPath = backdropPath;
	}
	final List<int>? genreIds = jsonConvert.convertListNotNull<int>(json['genre_ids']);
	if (genreIds != null) {
		moviesResults.genreIds = genreIds;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		moviesResults.id = id;
	}
	final String? originalLanguage = jsonConvert.convert<String>(json['original_language']);
	if (originalLanguage != null) {
		moviesResults.originalLanguage = originalLanguage;
	}
	final String? originalTitle = jsonConvert.convert<String>(json['original_title']);
	if (originalTitle != null) {
		moviesResults.originalTitle = originalTitle;
	}
	final String? overview = jsonConvert.convert<String>(json['overview']);
	if (overview != null) {
		moviesResults.overview = overview;
	}
	final double? popularity = jsonConvert.convert<double>(json['popularity']);
	if (popularity != null) {
		moviesResults.popularity = popularity;
	}
	final String? posterPath = jsonConvert.convert<String>(json['poster_path']);
	if (posterPath != null) {
		moviesResults.posterPath = posterPath;
	}
	final String? releaseDate = jsonConvert.convert<String>(json['release_date']);
	if (releaseDate != null) {
		moviesResults.releaseDate = releaseDate;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		moviesResults.title = title;
	}
	final bool? video = jsonConvert.convert<bool>(json['video']);
	if (video != null) {
		moviesResults.video = video;
	}
	final double? voteAverage = jsonConvert.convert<double>(json['vote_average']);
	if (voteAverage != null) {
		moviesResults.voteAverage = voteAverage;
	}
	final int? voteCount = jsonConvert.convert<int>(json['vote_count']);
	if (voteCount != null) {
		moviesResults.voteCount = voteCount;
	}
	return moviesResults;
}

Map<String, dynamic> $MoviesResultsToJson(Movie entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['adult'] = entity.adult;
	data['backdrop_path'] = entity.backdropPath;
	data['genre_ids'] =  entity.genreIds;
	data['id'] = entity.id;
	data['original_language'] = entity.originalLanguage;
	data['original_title'] = entity.originalTitle;
	data['overview'] = entity.overview;
	data['popularity'] = entity.popularity;
	data['poster_path'] = entity.posterPath;
	data['release_date'] = entity.releaseDate;
	data['title'] = entity.title;
	data['video'] = entity.video;
	data['vote_average'] = entity.voteAverage;
	data['vote_count'] = entity.voteCount;
	return data;
}