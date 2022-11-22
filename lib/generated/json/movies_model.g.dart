import 'package:movi/generated/json/base/json_convert_content.dart';
import 'package:movi/data/model/movies_model.dart';
import 'package:movi/domain/entities/search_result.dart';


MovieList $MovieListFromJson(Map<String, dynamic> json) {
	final MovieList movieList = MovieList();
	final int? page = jsonConvert.convert<int>(json['page']);
	if (page != null) {
		movieList.page = page;
	}
	final List<Movie>? results = jsonConvert.convertListNotNull<Movie>(json['results']);
	if (results != null) {
		movieList.results = results;
	}
	final int? totalPages = jsonConvert.convert<int>(json['total_pages']);
	if (totalPages != null) {
		movieList.totalPages = totalPages;
	}
	final int? totalResults = jsonConvert.convert<int>(json['total_results']);
	if (totalResults != null) {
		movieList.totalResults = totalResults;
	}
	return movieList;
}

Map<String, dynamic> $MovieListToJson(MovieList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['page'] = entity.page;
	data['results'] =  entity.results.map((v) => v.toJson()).toList();
	data['total_pages'] = entity.totalPages;
	data['total_results'] = entity.totalResults;
	return data;
}

Movie $MovieFromJson(Map<String, dynamic> json) {
	final Movie movie = Movie();
	final bool? adult = jsonConvert.convert<bool>(json['adult']);
	if (adult != null) {
		movie.adult = adult;
	}
	final String? backdropPath = jsonConvert.convert<String>(json['backdrop_path']);
	if (backdropPath != null) {
		movie.backdropPath = backdropPath;
	}
	final List<int>? genreIds = jsonConvert.convertListNotNull<int>(json['genre_ids']);
	if (genreIds != null) {
		movie.genreIds = genreIds;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		movie.id = id;
	}
	final String? originalLanguage = jsonConvert.convert<String>(json['original_language']);
	if (originalLanguage != null) {
		movie.originalLanguage = originalLanguage;
	}
	final String? originalTitle = jsonConvert.convert<String>(json['original_title']);
	if (originalTitle != null) {
		movie.originalTitle = originalTitle;
	}
	final String? overview = jsonConvert.convert<String>(json['overview']);
	if (overview != null) {
		movie.overview = overview;
	}
	final double? popularity = jsonConvert.convert<double>(json['popularity']);
	if (popularity != null) {
		movie.popularity = popularity;
	}
	final String? posterPath = jsonConvert.convert<String>(json['poster_path']);
	if (posterPath != null) {
		movie.posterPath = posterPath;
	}
	final String? releaseDate = jsonConvert.convert<String>(json['release_date']);
	if (releaseDate != null) {
		movie.releaseDate = releaseDate;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		movie.title = title;
	}
	final bool? video = jsonConvert.convert<bool>(json['video']);
	if (video != null) {
		movie.video = video;
	}
	final double? voteAverage = jsonConvert.convert<double>(json['vote_average']);
	if (voteAverage != null) {
		movie.voteAverage = voteAverage;
	}
	final int? voteCount = jsonConvert.convert<int>(json['vote_count']);
	if (voteCount != null) {
		movie.voteCount = voteCount;
	}
	return movie;
}

Map<String, dynamic> $MovieToJson(Movie entity) {
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