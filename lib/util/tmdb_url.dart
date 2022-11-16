class TmdbUrl {
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String apiKey = '';

  static String searchMovie(String query) =>
      '$baseUrl/search/movie?query=$query&api_key=$apiKey';

  static String searchShow(String query) =>
      '$baseUrl/search/tvshow?query=$query&api_key=$apiKey';

  static String searchPerson(String query) =>
      '$baseUrl/search/person?query=$query&api_key=$apiKey';
}
