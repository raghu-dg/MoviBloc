class TmdbUrl {
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String apiKey = '7b0ff77a3bf5521d05f43eedb6d0d733';

  static String searchMovie(String query) =>
      '$baseUrl/search/movie?query=$query&api_key=$apiKey';

  static String searchShow(String query) =>
      '$baseUrl/search/tv?query=$query&api_key=$apiKey';

  static String searchPerson(String query) =>
      '$baseUrl/search/person?query=$query&api_key=$apiKey';
}
